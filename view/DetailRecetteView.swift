//
//  DetailRecetteView.swift
//  RecetteApp
//
//  Created by EL-BATEOUI Nihal on 21/11/2025.
//

import SwiftUI

struct DetailRecetteView: View {
    @Binding var recette: Recette

    @State private var imageSelectionnee: UIImage?
    @State private var afficherPicker = false

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {

                Group {
                    if let data = recette.imageData,
                       let uiImage = UIImage(data: data) {
                        
                        Image(uiImage: uiImage)
                            .resizable()
                            .scaledToFill()
                            .frame(height: 250)
                            .clipped()
                        
                    } else if let image = imageSelectionnee {
                        
                        Image(uiImage: image)
                            .resizable()
                            .scaledToFill()
                            .frame(height: 250)
                            .clipped()
                        
                    } else {
                        
                        Image(recette.imageNameDefault)
                            .resizable()
                            .scaledToFill()
                            .frame(height: 250)
                            .clipped()
                    }
                }
                .onTapGesture { afficherPicker = true }
                .sheet(isPresented: $afficherPicker) {
                    ImagePicker(selectedImage: $imageSelectionnee)
                        .onDisappear {
                            if let image = imageSelectionnee,
                               let data = image.pngData() {
                                
                                recette.imageData = data   // ← IMPORTANT
                            }
                        }
                }

                Text(recette.nom)
                    .font(.largeTitle)
                    .bold()

                HStack {
                    Text("Préparation : \(recette.tempsPreparation) min")
                    Spacer()
                    Text("Cuisson : \(recette.tempsCuisson) min")
                }
                .foregroundStyle(.secondary)

                Stepper("Portions : \(recette.portions)",
                        value: $recette.portions,
                        in: 1...30)
                    .padding(.vertical)

                Text("Ingrédients")
                    .font(.title2)
                    .bold()

                ForEach(recette.ingredients) { ing in
                    HStack {
                        Text(ing.nom)
                        Spacer()
                        Text("\(recette.quantiteAjustee(ing.quantite), specifier: "%.1f") \(ing.unite)")
                    }
                }

                NavigationLink("Modifier la recette") {
                    EditRecetteView(recette: $recette)
                }
                .buttonStyle(.borderedProminent)
                .padding(.vertical)

                Text("Description")
                    .font(.title2)
                    .bold()

                Text(recette.description)
            }
            .padding()
        }
        .navigationTitle("Détails")
    }
}
