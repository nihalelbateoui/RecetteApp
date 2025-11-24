//
//  Recette.swift
//  RecetteApp
//
//  Created by EL-BATEOUI Nihal on 21/11/2025.
//
import Foundation

struct Recette: Identifiable {
    let id = UUID()
    
    var nom: String
    var imageNameDefault: String      // image d’origine dans les assets
    var imageData: Data?              // image modifiée par l’utilisateur
    var tempsPreparation: Int
    var tempsCuisson: Int
    var portions: Int
    var portionsInitiales: Int
    var ingredients: [Ingredient]
    var description: String
    
    func quantiteAjustee(_ quantite: Double) -> Double {
        let facteur = Double(portions) / Double(portionsInitiales)
        return quantite * facteur
    }
}
