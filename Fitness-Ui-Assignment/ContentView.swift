import SwiftUI

struct ContentView: View {
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
               
               VStack {
                   CardView()
                   CategoriesView()
                
               }
              
           }
           .edgesIgnoringSafeArea(.all)
       }
   }


#Preview {
    ContentView()
}
