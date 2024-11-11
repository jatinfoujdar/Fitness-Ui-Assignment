import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 0) {
            
            Color(red: 0.204, green: 0.216, blue: 0.247)
                .overlay(
                    VStack(alignment: .leading) {
                        Text("Fitness Courses")
                            .font(.system(size: 35, weight: .bold, design: .default))
                            .foregroundColor(.white)
                            .padding(.bottom,150)

                        Text("Your Activity Lessons")
                            .font(.system(size: 20, weight: .bold, design: .default))
                            .foregroundColor(.white)
                            
                        
                        
                    }
                   
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
