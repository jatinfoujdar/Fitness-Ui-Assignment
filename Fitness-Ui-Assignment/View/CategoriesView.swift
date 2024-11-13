import SwiftUI

struct CategoriesView: View {
   
    let categories = [
        ("All", nil),
        ("Heart Attack", "💔"),
        ("Body Building", "💪")
    ]
    
    
    @State private var selectedCategory: String? = nil
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Categories")
                .font(.title3)
                .fontWeight(.bold)
                .padding([.leading, .top])
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 15) {
                    ForEach(categories, id: \.0) { category in
                        ZStack {
                           
                            if category.0 == "All" {
                               
                                Circle()
                                    .fill(self.selectedCategory == category.0 ? Color.black : Color.black.opacity(0.2))
                                    .frame(width: 80, height: 80)
                            } else {
                               
                                Capsule()
                                    .fill(self.selectedCategory == category.0 ? Color.black : Color.black.opacity(0.2))
                                    .frame(height: 80)
                            }
                            
                            HStack {
                                if let emoji = category.1 {
                                    
                                    Text(emoji)
                                        .font(.title)
                                        .padding(20)
                                        .background(Circle().fill(self.selectedCategory == category.0 ? Color.white : Color.blue))
                                        .foregroundColor(self.selectedCategory == category.0 ? .black : .white)
                                        .padding(.leading, 4) 
                                } else {
                                    
                                    if category.0 == "All" {
                                        Circle()
                                            .fill(self.selectedCategory == category.0 ? Color.white : Color.blue)
                                            .frame(width: 30, height: 30)
                                            .overlay(
                                                Text("🌐")
                                                    .font(.title)
                                                    .foregroundColor(self.selectedCategory == category.0 ? .black : .white)
                                            )
                                    }
                                }
                                
                              
                                Text(category.0)
                                    .font(.body)
                                    .foregroundColor(self.selectedCategory == category.0 ? .white : .black)
                                    .fontWeight(.bold)
                                    .padding(.vertical, 10)
                                    .padding(.horizontal, 10)
                                
                            }
                        }
                        .onTapGesture {
                 
                            self.selectedCategory = category.0
                        }
                        .padding(.vertical, 5)
                    }
                }
                .padding(.leading)
            }
            
        }
        
    }
}

#Preview {
    CategoriesView()
}
