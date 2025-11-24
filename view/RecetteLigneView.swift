//
//  RecetteLigneView.swift
//  RecetteApp
//
//  Created by EL-BATEOUI Nihal on 21/11/2025.
//

import SwiftUI

struct RecetteLigneView: View {
    let recette: Recette
    
    var body: some View {
        HStack(spacing: 16) {
            
            // Image modifiée OU image par défaut
            if let data = recette.imageData,
               let uiImage = UIImage(data: data) {
                
                Image(uiImage: uiImage)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 80, height: 80)
                    .clipped()
                    .cornerRadius(8)
                
            } else {
                
                Image(recette.imageNameDefault)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 80, height: 80)
                    .clipped()
                    .cornerRadius(8)
            }
            
            VStack(alignment: .leading, spacing: 6) {
                Text(recette.nom)
                    .font(.headline)
                Text("Préparation : \(recette.tempsPreparation) min")
                Text("Cuisson : \(recette.tempsCuisson) min")
            }
            
            Spacer()
        }
        .padding(.vertical, 6)
    }
}
