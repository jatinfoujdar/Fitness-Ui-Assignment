import SwiftUI

struct TitleView: View {
    var body: some View {
        VStack(alignment: .leading,spacing: 30) {
            Text("Fitness Courses")
                .font(.system(size: 35, weight: .bold, design: .default))
                .foregroundColor(.white)
              
            Text("Your Active Lessons")
                .font(.system(size: 15, weight: .bold, design: .default))
                .foregroundColor(.white)
             
        }
        
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.leading)
    }
}

#Preview {
    TitleView()
}
