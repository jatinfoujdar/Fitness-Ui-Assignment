import SwiftUI

struct CustomView: View {
    let categories = ["🍎", "🍌", "🍍", "🍓", "🍇", "🍉", "🍊"]

    var body: some View {
        ZStack {
            // Split background
            VStack {
                Color.red
                    .frame(height: UIScreen.main.bounds.height / 2)
                Color.white
                    .frame(height: UIScreen.main.bounds.height / 2)
            }
            .edgesIgnoringSafeArea(.all)
            
            VStack {
                // Title on the red background
                Text("My Title")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.top, 50)
                    .frame(maxWidth: .infinity, alignment: .center)
                
                // Card that spans across red and white sections
                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.white)
                        .frame(height: 200)
                        .padding(.horizontal, 20)
                        .offset(y: 50)  // Move the card up a little so it spans both sections
                    
                    // Add some content inside the card
                    VStack {
                        Text("Card Title")
                            .font(.title)
                            .fontWeight(.bold)
                        Text("This is a card that spans both red and white sections.")
                            .font(.body)
                            .padding()
                    }
                    .foregroundColor(.black)
                }
                
                // Categories title
                Text("Categories")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding(.top, 40)
                
                // Scrollable icons for categories
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 20) {
                        ForEach(categories, id: \.self) { category in
                            Text(category)
                                .font(.largeTitle)
                                .frame(width: 50, height: 50)
                                .background(Color.gray.opacity(0.2), in: RoundedRectangle(cornerRadius: 10))
                                .padding(.vertical)
                        }
                    }
                    .padding(.horizontal)
                }
                
                Spacer()
            }
        }
    }
}

struct CustomView_Previews: PreviewProvider {
    static var previews: some View {
        CustomView()
    }
}
