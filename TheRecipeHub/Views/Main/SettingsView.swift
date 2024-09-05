//
//  HomeView.swift
//  TheRecipeHub
//
//  Created by Alan Haro on 9/4/24.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationView {
            Text("v1.0.0")
                .navigationTitle("Settings")
        }
        .navigationViewStyle(.stack)
    }
}


struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
