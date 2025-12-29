import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = ContentViewModel()
    
    var body: some View {
           ZStack {
               VStack(spacing: 0) {
                   Color(red: 0.204, green: 0.216, blue: 0.247)
                       .frame(height: UIScreen.main.bounds.height / 2)
                       .edgesIgnoringSafeArea(.top)
                   
                   Color(red: 245 / 255.0, green: 238 / 255.0, blue: 237 / 255.0)
                       .frame(height: UIScreen.main.bounds.height / 2)
                       .edgesIgnoringSafeArea(.bottom)
               }
               
               if viewModel.isLoading {
                   ProgressView()
                       .progressViewStyle(CircularProgressViewStyle(tint: .white))
                       .scaleEffect(2)
               } else {
                   ScrollView {
                       VStack(spacing: 20) {
                           ForEach(viewModel.components) { component in
                               ComponentFactory.build(component: component)
                           }
                       }
                       .padding(.top, 60) // Spacing for safe area
                   }
               }
           }
           .edgesIgnoringSafeArea(.all)
       }
   }


#Preview {
    ContentView()
}
