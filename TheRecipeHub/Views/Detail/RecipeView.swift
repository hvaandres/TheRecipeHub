//
//  RecipeView.swift
//  TheRecipeHub
//
//  Created by Alan Haro on 9/4/24.
//

import SwiftUI

struct RecipeView: View {
    
    var recipe: Recipe
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                AsyncImage(url: URL(string: recipe.image)) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(maxWidth: .infinity)
                        .frame(height: 300)
                        .clipped()
                } placeholder: {
                    Image(systemName: "photo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100, alignment: .center)
                        .foregroundColor(.gray.opacity(0.7))
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                }
                
                .frame(height: 300)
                .background(LinearGradient(gradient: Gradient(colors: [Color(.gray).opacity(0.3), Color(.gray)]), startPoint: .top, endPoint: .bottom))
                
                Text(recipe.name)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding([.leading, .trailing], 16)
                
                Text(recipe.description)
                    .font(.body)
                    .foregroundColor(.secondary)
                    .padding([.leading, .trailing], 16)
                
                Text("Ingredients")
                    .font(.headline)
                    .padding([.leading, .trailing], 16)
                
                Text(recipe.ingredients)
                    .font(.body)
                    .padding([.leading, .trailing], 16)
                
                Text("Directions")
                    .font(.headline)
                    .padding([.leading, .trailing], 16)
                
                Text(recipe.directions)
                    .font(.body)
                    .padding([.leading, .trailing], 16)
                
                Spacer()
            }
            .ignoresSafeArea(.container, edges: .top)
        }
        .navigationTitle(recipe.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct RecipeView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeView(recipe: Recipe.all[0])
    }
}
