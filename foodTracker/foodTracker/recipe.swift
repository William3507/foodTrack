//
//  recipe.swift
//  foodTracker
//
//  Created by William Bailey on 9/8/25.
//

import Foundation

struct Recipe: Identifiable, Hashable, Equatable {
    let id = UUID()
    var title : String
    var ingredients : [String]
    var instructions : String
    var macros : Macros
}

struct Macros: Hashable, Equatable {
    var calories : Int
    var protein : Int
    var carbs : Int
    var fat : Int
}


extension Recipe {
    static let sampleRecipes: [Recipe] = [
        Recipe(
                    title: "Spaghetti Bolognese",
                    ingredients: ["Spaghetti", "Ground Beef", "Tomato Sauce", "Onion", "Garlic"],
                    instructions: "Cook pasta. Brown beef with onion/garlic. Add tomato sauce. Combine.",
                    macros: Macros(calories: 600, protein: 25, carbs: 70, fat: 20)
                ),
                Recipe(
                    title: "Chicken Salad",
                    ingredients: ["Chicken Breast", "Lettuce", "Tomato", "Cucumber", "Olive Oil"],
                    instructions: "Grill chicken. Chop veggies. Mix together with olive oil.",
                    macros: Macros(calories: 350, protein: 30, carbs: 10, fat: 15)
                )
    ]
}
