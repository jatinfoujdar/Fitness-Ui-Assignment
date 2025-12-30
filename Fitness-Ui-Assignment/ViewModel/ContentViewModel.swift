import SwiftUI
import Combine
import FirebaseFirestore

class ContentViewModel: ObservableObject {
    @Published var components: [UIComponent] = []
    @Published var isLoading = true
    
    private var db = Firestore.firestore()
    private var listener: ListenerRegistration?

    init() {
        fetchSDUIData()
    }
    
    func fetchSDUIData() {
        // Real-time listener from Firebase Firestore
        listener = db.collection("layouts").document("home_screen").addSnapshotListener { [weak self] documentSnapshot, error in
            guard let self = self else { return }
            
            if let error = error {
                print("Error fetching document: \(error)")
                self.isLoading = false
                return
            }
            
            guard let document = documentSnapshot, document.exists,
                  let data = document.data() else {
                print("Document does not exist or is empty")
                self.isLoading = false
                return
            }
            
            do {
                let jsonData = try JSONSerialization.data(withJSONObject: data, options: [])
                let decodedResponse = try JSONDecoder().decode(SDUIResponse.self, from: jsonData)
                
                DispatchQueue.main.async {
                    self.components = decodedResponse.components
                    self.isLoading = false
                }
            } catch {
                print("Error decoding SDUI data: \(error)")
                self.isLoading = false
            }
        }
    }
    
    deinit {
        listener?.remove()
    }
}
