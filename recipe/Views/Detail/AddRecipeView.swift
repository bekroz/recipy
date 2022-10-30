//
//  RecipeCard.swift
//  recipe
//
//  Created by BekRoz on 29/10/22.
//

import SwiftUI

struct AddRecipeView: View {

    @EnvironmentObject var recipesVM: RecipesViewModel

    @State private var name: String = ""
    @State private var image: String = ""
    @State private var selectCategory: Category = Category.main
    @State private var description: String = ""
    @State private var ingredients: String = ""
    @State private var directions: String = ""
    @State private var url: String = ""
    @State private var navigateToRecipe = false

    @Environment(\.dismiss) var dismiss

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Name")) {
                    TextField("Recipe Name", text: $name)
                }

                Section(header: Text("Category")) {
                    Picker("Category", selection: $selectCategory) {
                        ForEach(Category.allCases) { category in
                            Text(category.rawValue)
                                .tag(category)
                        }
                    }
                    .pickerStyle(.menu)
                }

                Section(header: Text("Image")) {
                    TextField("Image Link", text: $image)
                }

                Section(header: Text("URL")) {
                    TextField("Reference Link", text: $url)
                }

                Section(header: Text("Description")) {
                    TextEditor(text: $description)
                }

                Section(header: Text("Ingredients")) {
                    TextEditor(text: $ingredients)
                }

                Section(header: Text("Directions")) {
                    TextEditor(text: $directions)
                }

            }
            .toolbar(content: {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        dismiss()
                    } label: {
                        Label("Cancel", systemImage: "arrow.uturn.backward")
                            .labelStyle(.iconOnly)
                    }
                }

                ToolbarItem {

                    NavigationLink(isActive: $navigateToRecipe) {
                        RecipeView(recipe: recipesVM.recipes.sorted{ $0.datePublished > $1.datePublished }[0])
                            .navigationBarBackButtonHidden(true)
                    } label: {
                        Button {
                            saveRecipe()
                            navigateToRecipe = true
                        } label: {
                            Label("Done", systemImage: "square.and.arrow.down")
                                .labelStyle(.iconOnly)
                        }
                    }
                    .disabled(name.isEmpty)
                }
            })
            .navigationTitle("New Recipe")
            .navigationBarTitleDisplayMode(.inline)
        }
        .navigationViewStyle(.stack)
    }
}

struct AddRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        AddRecipeView()
            .environmentObject(RecipesViewModel())
    }
}

extension AddRecipeView {
    private func saveRecipe() {

        let now = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"

        let datePublished = dateFormatter.string(from: now)
        let recipe = Recipe(name: name,
                            image: image,
                            description: description,
                            ingredients: ingredients,
                            directions: directions,
                            category: selectCategory.rawValue,
                            datePublished: datePublished,
                            url: url)

        recipesVM.addRecipe(recipe: recipe)
    }
}
