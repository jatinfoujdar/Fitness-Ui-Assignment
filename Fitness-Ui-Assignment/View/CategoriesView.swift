import SwiftUI

struct CategoriesView: View {
    let categories: [CategoryModel]
    
    @State private var selectedCategory: String? = "All"
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Categories")
                .font(.title3)
                .fontWeight(.bold)
                .padding([.leading, .top])
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 15) {
                    
                    // Specific "All" handling if not provided by server or as a default
                    categoryItem(name: "All", emoji: nil)
                    
                    ForEach(categories) { category in
                        categoryItem(name: category.name, emoji: category.emoji)
                    }
                }
                .padding(.leading)
            }
       
            
            if let selectedCategory = selectedCategory, selectedCategory != "All" {
                Text("\(selectedCategory) selected")
                    .font(.headline)
                    .foregroundColor(.gray)
                    .padding(.top, 20)
                    .frame(maxWidth: .infinity, alignment: .center)
            }
        }
    }
    
    @ViewBuilder
    func categoryItem(name: String, emoji: String?) -> some View {
        ZStack {
           
            if name == "All" {
               
                Circle()
                    .fill(self.selectedCategory == name ? Color.black : Color.black.opacity(0.2))
                    .frame(width: 80, height: 80)
            } else {
               
                Capsule()
                    .fill(self.selectedCategory == name ? Color.black : Color.white)
                    .frame(height: 80)
            }
            
            HStack {
                if let emoji = emoji {
                    
                    Text(emoji)
                        .font(.title)
                        .padding(20)
                        .background(Circle().fill(self.selectedCategory == name ? Color.white : Color.gray))
                        .foregroundColor(self.selectedCategory == name ? .black : .white)
                        .padding(.leading, 4)
                } else {
                    
                    if name == "All" {
                        Circle()
                            .fill(self.selectedCategory == name ? Color.white : Color.blue)
                            .frame(width: 30, height: 30)
                           
                    }
                }
                
              
                Text(name)
                    .font(.body)
                    .foregroundColor(self.selectedCategory == name ? .white : .black)
                    .fontWeight(.bold)
                    .padding(.vertical, 10)
                    .padding(.horizontal, 10)
                
            }
        }
        .onTapGesture {
            self.selectedCategory = name
        }
        .padding(.vertical, 5)
    }
}

#Preview {
    CategoriesView(categories: [
        CategoryModel(name: "Heart Attack", emoji: "💔"),
        CategoryModel(name: "Body Building", emoji: "💪")
    ])
}
