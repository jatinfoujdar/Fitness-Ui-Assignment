import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 0) {
            
            Color(red: 0.204, green: 0.216, blue: 0.247)
                .overlay(
                    Text("Fitness Courses")
                        .font(.system(size:30, weight: .bold, design: .default))
                        .foregroundColor(.white)
                        .padding(.bottom,200)
                        
                )
                .frame(height: UIScreen.main.bounds.height / 2)

          
            Color.white
                .frame(height: UIScreen.main.bounds.height / 2)
        }
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    ContentView()
}
