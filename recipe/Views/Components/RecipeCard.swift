//
//  RecipeCard.swift
//  recipe
//
//  Created by BekRoz on 29/10/22.
//

import SwiftUI

struct RecipeCard: View {
    @EnvironmentObject var recipesVM: RecipesViewModel
    
    var recipe: Recipe
    
    var body: some View {
        VStack {
            CardImage(url: recipe.image, text: recipe.name)
        }
        .frame(width: 160, height: 217, alignment: .top)
        .background(LinearGradient(gradient: Gradient(colors: [Color(.gray).opacity(0.3), Color(.gray)]), startPoint: .top, endPoint: .bottom))
        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
        .shadow(color: Color.black.opacity(0.3), radius: 15, x: 0, y: 10)
    }
}



struct RecipeCard_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCard(recipe: Recipe.all[0])
    }
}

