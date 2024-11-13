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
            .scaledToFill()
            .frame(width: 320, height: 400)
            .cornerRadius(20)
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.white, lineWidth: 5)
            )
            .padding()
            .overlay(
                VStack(alignment: .leading) {
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
                    Text("A Fit life is a great life")
                        .font(.subheadline)
                        .foregroundColor(.white)
                    
                   
                    Capsule()
                        .fill(Color(red: 0.204, green: 0.216, blue: 0.247))
                        .frame(width: 150, height: 40)
                        .overlay(
                            HStack {
                                Image(systemName: "book.fill")
                                    .foregroundColor(.white)
                                    .padding(.leading, 5)
                                Text(" Continue")
                                    .font(.headline)
                                    .foregroundColor(.white)
                                Spacer()
                            }
                            .padding(.horizontal, 5)
                        )
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.white, lineWidth: 2)
                        )
                        .padding(.top, 20)
                }
                .padding(.leading, 30)
                .frame(maxWidth: .infinity, alignment: .leading)
            )
    }
}



#Preview {
    CardView()
}
