import SwiftUI

struct TitleView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Fitness Courses")
                .font(.system(size: 35, weight: .bold, design: .default))
                .foregroundColor(.white)
                .padding()
            Text("Your Active Lessons")
                .font(.system(size: 20, weight: .bold, design: .default))
                .foregroundColor(.white)
                .padding()
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.leading)
    }
}

#Preview {
    TitleView()
}
