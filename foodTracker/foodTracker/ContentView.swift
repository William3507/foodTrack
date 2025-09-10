//
//  ContentView.swift
//  foodTracker
//
//  Created by William Bailey on 9/2/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            NavigationStack {
                RecipesView()
            }
            .tabItem {
                Label("Recipes",systemImage: "book")
            }
            
            NavigationStack {
                MealPlanView()
            }
            .tabItem {
                Label("Meal Plan", systemImage:"calendar")
            }
            
            NavigationStack {
                ShoppingListView()
            }
            .tabItem {
                Label("Shopping List", systemImage:"cart")
            }
        }
    }
}

#Preview {
    ContentView()
}
