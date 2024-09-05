//
//  HomeView.swift
//  TheRecipeHub
//
//  Created by Alan Haro on 9/4/24.
//

import SwiftUI

struct NewRecipeView: View {
    var body: some View {
        NavigationView {
            Text("These are all new recipes")
                .navigationTitle("New Recipes")
        }
        .navigationViewStyle(.stack)
    }
}


struct NewRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
