//
//  CategoryView.swift
//  TheRecipeHub
//
//  Created by Alan Haro on 9/4/24.
//

import SwiftUI

struct CategoryView: View {
    var category: Category
    
    // Properties
    
    var recipes: [Recipe] {
        return Recipe.all.filter { $0.category.rawValue == category.rawValue }
    }
    
    var body: some View {
        ScrollView {
            RecipeList(recipes: recipes)
        }
        .navigationTitle(category.rawValue + " Recipes")
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(category: Category.dessert)
    }
}
