//
//  HomeView.swift
//  TheRecipeHub
//
//  Created by Alan Haro on 9/4/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ScrollView{
                RecipeList(recipes: Recipe.all)
            }
            .navigationTitle("My recipes")
        }
        .navigationViewStyle(.stack)
    }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
