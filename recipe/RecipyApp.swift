//
//  RecipyApp.swift
//  RecipyApp
//
//  Created by BekRoz on 29/10/22.
//

import SwiftUI

@main
struct RecipyApp: App {
    @StateObject var recipesViewModel = RecipesViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(recipesViewModel)
        }
    }
}
