//
//  HomeView.swift
//  recipe
//
//  Created by BekRoz on 29/10/22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {   
        NavigationView {
            ScrollView (showsIndicators: false ) {
                RecipeList(recipes: Recipe.all)
            }
            .navigationTitle("My Recipes")
        }
        .navigationViewStyle(.stack)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
