//
//  HomeView.swift
//  TheRecipeHub
//
//  Created by Alan Haro on 9/4/24.
//

import SwiftUI

struct CategoriesView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(Category.allCases, id: \.self) { category in
                    NavigationLink {
                        CategoryView(category: category)
                    } label: {
                        Text(category.rawValue + "s")
                    }
                }
            }
            .navigationTitle("My Recipes")
        }
        .navigationViewStyle(.stack)
    }
}


struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView()
    }
}
