//
//  Ingredient.swift
//  RecetteApp
//
//  Created by EL-BATEOUI Nihal on 21/11/2025.
//

import Foundation

struct Ingredient: Identifiable {
    let id = UUID()
    var nom: String
    var quantite: Double
    var unite: String
}
