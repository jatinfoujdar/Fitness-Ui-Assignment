import SwiftUI

struct ContentView: View {
    var body: some View {
           ZStack {
               VStack(spacing: 0) {
                   Color(red: 0.204, green: 0.216, blue: 0.247)
                       .frame(height: UIScreen.main.bounds.height / 2)
                       .edgesIgnoringSafeArea(.top)
                   
                   Color.white
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
