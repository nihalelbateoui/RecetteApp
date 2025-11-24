//
//  RecetteRepository.swift
//  RecetteApp
//
//  Created by EL-BATEOUI Nihal on 21/11/2025.
//

import Foundation

protocol RecetteRepository: ObservableObject {
    var recettes: [Recette] { get }
}
