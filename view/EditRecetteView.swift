//
//  EditRecetteView.swift
//  RecetteApp
//
//  Created by EL-BATEOUI Nihal on 21/11/2025.
//
import SwiftUI

struct EditRecetteView: View {
    
    @Binding var recette: Recette
    
    @State private var trierIngredients = false
    @State private var nouvelIngredientNom = ""
    @State private var nouvelIngredientQuantite = ""
    @State private var nouvelIngredientUnite = ""
    
    var body: some View {
        Form {
            Section("Informations générales") {
                Stepper("Préparation : \(recette.tempsPreparation) min",
                        value: $recette.tempsPreparation,
                        in: 0...180)
                
                Stepper("Cuisson : \(recette.tempsCuisson) min",
                        value: $recette.tempsCuisson,
                        in: 0...180)
                
                Stepper("Portions : \(recette.portions)",
                        value: $recette.portions,
                        in: 1...30)
            }
            
            Section("Ingrédients") {
                Toggle("Trier par nom", isOn: $trierIngredients)
                    .onChange(of: trierIngredients) {
                        if trierIngredients {
                            recette.ingredients.sort { $0.nom < $1.nom }
                        }
                    }
                
                ForEach($recette.ingredients) { $ingredient in
                    HStack {
                        TextField("Nom", text: $ingredient.nom)
                        TextField("Quantité", value: $ingredient.quantite, formatter: NumberFormatter())
                            .keyboardType(.decimalPad)
                            .frame(width: 60)
                        TextField("Unité", text: $ingredient.unite)
                            .frame(width: 50)
                    }
                }
                .onDelete { indexSet in
                    recette.ingredients.remove(atOffsets: indexSet)
                }
                
                VStack(alignment: .leading, spacing: 8) {
                    Text("Ajouter un ingrédient")
                        .font(.headline)
                    
                    TextField("Nom", text: $nouvelIngredientNom)
                    TextField("Quantité", text: $nouvelIngredientQuantite)
                        .keyboardType(.decimalPad)
                    TextField("Unité", text: $nouvelIngredientUnite)
                    
                    Button("Ajouter") {
                        if let q = Double(nouvelIngredientQuantite),
                           !nouvelIngredientNom.isEmpty {
                            
                            let nouvel = Ingredient(
                                nom: nouvelIngredientNom,
                                quantite: q,
                                unite: nouvelIngredientUnite
                            )
                            
                            recette.ingredients.append(nouvel)
                            
                            if trierIngredients {
                                recette.ingredients.sort { $0.nom < $1.nom }
                            }
                            
                            // reset
                            nouvelIngredientNom = ""
                            nouvelIngredientQuantite = ""
                            nouvelIngredientUnite = ""
                        }
                    }
                }
            }
        }
        .navigationTitle("Modifier la recette")
    }
}
