//
//  DetailRecetteView.swift
//  RecetteApp
//
//  Created by EL-BATEOUI Nihal on 21/11/2025.
//

import SwiftUI

struct DetailRecetteView: View {
    @State var recette: Recette

    @State private var imageSelectionnee: UIImage?
    @State private var afficherPicker = false

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {

                // Image cliquable
                Group {
                    if let image = imageSelectionnee {
                        Image(uiImage: image)
                            .resizable()
                            .scaledToFill()
                            .frame(height: 250)
                            .clipped()
                    } else {
                        Image(recette.nomImage)
                            .resizable()
                            .scaledToFill()
                            .frame(height: 250)
                            .clipped()
                    }
                }
                .onTapGesture { afficherPicker = true }
                .sheet(isPresented: $afficherPicker) {
                    ImagePicker(selectedImage: $imageSelectionnee)
                }

                // Nom
                Text(recette.nom)
                    .font(.largeTitle)
                    .bold()

                // Prépa & cuisson
                HStack {
                    Text("Préparation : \(recette.tempsPreparation) min")
                    Spacer()
                    Text("Cuisson : \(recette.tempsCuisson) min")
                }
                .foregroundStyle(.secondary)

                // Portions
                Stepper("Portions : \(recette.portions)",
                        value: $recette.portions,
                        in: 1...30)
                    .padding(.vertical)

                // Liste d’ingrédients
                Text("Ingrédients")
                    .font(.title2)
                    .bold()

                ForEach(recette.ingredients) { ingredient in
                    HStack {
                        Text(ingredient.nom)
                        Spacer()
                        Text("\(recette.quantiteAjustee(ingredient.quantite), specifier: "%.1f") \(ingredient.unite)")
                            .foregroundColor(.secondary)
                    }
                }

                // Bouton éditer
                NavigationLink("Modifier la recette") {
                    EditRecetteView(recette: $recette)
                }
                .buttonStyle(.borderedProminent)
                .padding(.vertical)

                // Description
                Text("Description")
                    .font(.title2)
                    .bold()
                    .padding(.top)

                Text(recette.description)
            }
            .padding()
        }
        .navigationTitle("Détails")
    }
}

#Preview {
    DetailRecetteView(recette: Recette(
        nom: "Simple Cake",
        nomImage: "simple_cake",
        tempsPreparation: 10,
        tempsCuisson: 30,
        portions: 12,
        portionsInitiales: 12,
        ingredients: [],
        description: "Lorem ipsum..."
    ))
}
