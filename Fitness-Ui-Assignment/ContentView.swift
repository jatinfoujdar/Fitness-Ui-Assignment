import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 0) {
                    Color(red: 0.204, green: 0.216, blue: 0.247)
                        .overlay(
                            VStack(spacing: 0) {
                                CardView()
                            }
                        )
                }
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    ContentView()
}
