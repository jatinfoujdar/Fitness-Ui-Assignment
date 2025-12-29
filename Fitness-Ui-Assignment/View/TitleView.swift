import SwiftUI

struct TitleView: View {
    let header: String
    let subHeader: String
    
    var body: some View {
        VStack(alignment: .leading,spacing: 30) {
            Text(header)
                .font(.system(size: 35, weight: .bold, design: .default))
                .foregroundColor(.white)
              
            Text(subHeader)
                .font(.system(size: 15, weight: .bold, design: .default))
                .foregroundColor(.white)
             
        }
        
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.leading)
    }
}

#Preview {
    TitleView(header: "Fitness Courses", subHeader: "Your Active Lessons")
}
