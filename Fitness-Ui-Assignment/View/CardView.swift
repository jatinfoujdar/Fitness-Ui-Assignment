import SwiftUI

struct CardView: View {
    var body: some View {
        
        VStack(alignment: .leading, spacing: 0) {
            TitleView()
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 1) {
                    CardImageView(imageName: "gym", topPadding: 150)

                
                    CardImageView(imageName: "gym", topPadding: 150)
                }
                
            }
        }
    }
}

struct CardImageView: View {
    var imageName: String
    var topPadding: CGFloat
    
    var body: some View {
        Image(imageName)
            .resizable()
            .frame(width: 320, height: 400)
            .cornerRadius(20)
            .padding()
            .overlay(
                VStack(alignment: .leading){
                    HStack {
                        Text("Next:")
                            .font(.title2)
                            .foregroundColor(.white)
                            .padding(.top, topPadding)
                        Text("Fitness Course")
                            .font(.title2)
                            .bold()
                            .foregroundColor(.white)
                            .padding(.top, topPadding)
                    }
                    Text("A Fit like is great life")
                        .font(.subheadline)
                        .foregroundColor(.white)
                }
                .padding(.leading, 30)
                .frame(maxWidth: .infinity, alignment: .leading)
            )
            .padding(.bottom, 200)
    }
}

#Preview {
    CardView()
}
