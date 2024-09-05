//
//  HomeView.swift
//  TheRecipeHub
//
//  Created by Alan Haro on 9/4/24.
//

import SwiftUI

struct FavoritesView: View {
    var body: some View {
        NavigationView {
            Text("You haven't saved any of the new recipes to your most favorites yet.")
                .padding()
                .navigationTitle("Favorites")
        }
        .navigationViewStyle(.stack)
    }
}


struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
