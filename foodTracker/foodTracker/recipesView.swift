//
//  recipesView.swift
//  foodTracker
//
//  Created by William Bailey on 9/8/25.
//

import SwiftUI

struct RecipesView: View {
    
    //Get sample recipes from recipe.swift
    let recipes = Recipe.sampleRecipes
    
    //Set the body of the view
    var body : some View {
        List(recipes) { recipe in
            NavigationLink(value: recipe) {
                VStack(alignment: .leading) {
                    Text(recipe.title).font(.headline)
                    Text("\(recipe.macros.calories) cal • \(recipe.macros.protein)g protein")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
            }
        }
        .navigationTitle("Recipes")
        .navigationDestination(for: Recipe.self){ recipe in
            RecipeDetailView(recipe : recipe)
        }
    }
}


#Preview {
    NavigationStack{
        RecipesView()
    }
}
