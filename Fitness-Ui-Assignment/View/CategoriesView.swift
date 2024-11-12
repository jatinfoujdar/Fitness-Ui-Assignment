//
//  CategoriesView.swift
//  Fitness-Ui-Assignment
//
//  Created by jatin foujdar on 11/11/24.
//

import SwiftUI

struct CategoriesView: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("Categories")
                .font(.title3)
                .fontWeight(.bold)
            
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

#Preview {
    CategoriesView()
}
