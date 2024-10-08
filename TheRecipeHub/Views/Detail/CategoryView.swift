//
//  CategoryView.swift
//  TheRecipeHub
//
//  Created by Alan Haro on 9/4/24.
//

import SwiftUI

struct CategoryView: View {
    @EnvironmentObject var recipesVM:  RecipesViewModel
    var category: Category
    
    // Properties
    
    var recipes: [Recipe] {
        return recipesVM.recipes.filter { $0.category.rawValue == category.rawValue }
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
            .environmentObject(RecipesViewModel())
    }
}
