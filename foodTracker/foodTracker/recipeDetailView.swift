//
//  recipeDetailView.swift
//  foodTracker
//
//  Created by William Bailey on 9/8/25.
//

import SwiftUI

struct RecipeDetailView : View {
    let recipe: Recipe
    
    var body : some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                //Get title and display title as bold
                Text(recipe.title).font(.largeTitle).bold()
                
                //Get Ingredients and list each ingredient
                Text("Ingredients").font(.headline)
                ForEach(recipe.ingredients, id:\.self) { ingredient in
                        Text("• \(ingredient)")
                }
                
                //Instructions
                Text("Instructions").font(.headline)
                Text(recipe.instructions)
                
                
                //Macros (subset struc)
                Text("Macros").font(.headline)
                Text("Calories: \(recipe.macros.calories)")
                Text("Protein: \(recipe.macros.protein)g")
                Text("Carbs: \(recipe.macros.carbs)g")
                Text("Fat: \(recipe.macros.fat)g")
            }.padding()
        }
        .navigationTitle(recipe.title)
        .navigationBarTitleDisplayMode(.inline)
    }
}



#Preview {
    NavigationStack {
        RecipeDetailView(recipe: Recipe.sampleRecipes[0])
    }
}
