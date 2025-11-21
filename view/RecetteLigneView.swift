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
            Image(recette.nomImage)
                .resizable()
                .scaledToFill()
                .frame(width: 80, height: 80)
                .clipped()
                .cornerRadius(8)
            
            VStack(alignment: .leading, spacing: 6) {
                Text(recette.nom)
                    .font(.headline)
                
                Text("Préparation : \(recette.tempsPreparation) min")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                
                Text("Cuisson : \(recette.tempsCuisson) min")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            
            Spacer()
        }
        .padding(.vertical, 6)
    }
}
