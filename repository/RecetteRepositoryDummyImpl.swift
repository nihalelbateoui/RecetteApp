//
//  RecetteRepositoryDummyImpl.swift
//  RecetteApp
//
//  Created by EL-BATEOUI Nihal on 21/11/2025.
//

import Foundation

class RecetteRepositoryDummyImpl: RecetteRepository {
    
    @Published var recettes: [Recette] = [
        
        Recette(
            nom: "Simple Cake",
            imageNameDefault: "simple_cake",
            imageData: nil,
            tempsPreparation: 10,
            tempsCuisson: 30,
            portions: 12,
            portionsInitiales: 12,
            ingredients: [
                Ingredient(nom: "Sucre", quantite: 200, unite: "g"),
                Ingredient(nom: "Beurre", quantite: 125, unite: "g"),
                Ingredient(nom: "Oeufs", quantite: 2, unite: "pcs"),
                Ingredient(nom: "Farine", quantite: 200, unite: "g"),
                Ingredient(nom: "Levure", quantite: 10, unite: "g"),
                Ingredient(nom: "Lait", quantite: 12.5, unite: "cl")
            ],
            description: "Un gâteau simple et moelleux, idéal pour le goûter ou un dessert rapide. Sa texture légère et son goût doux en font une recette facile à réussir, même pour les débutants."
        ),

        Recette(
            nom: "Chocolate Cake",
            imageNameDefault: "chocolate_cake",
            imageData: nil,
            tempsPreparation: 15,
            tempsCuisson: 25,
            portions: 8,
            portionsInitiales: 8,
            ingredients: [
                Ingredient(nom: "Chocolat", quantite: 200, unite: "g"),
                Ingredient(nom: "Sucre", quantite: 200, unite: "g"),
                Ingredient(nom: "Beurre", quantite: 125, unite: "g"),
                Ingredient(nom: "Oeufs", quantite: 4, unite: "pcs"),
                Ingredient(nom: "Farine", quantite: 125, unite: "g"),
                Ingredient(nom: "Levure", quantite: 5, unite: "g")
            ],
            description: "Un cake au chocolat fondant et généreux, parfait pour les amateurs de cacao. Simple à préparer, il offre une texture riche et un goût intense qui plaît à tous."
        ),

        Recette(
            nom: "Clafoutis",
            imageNameDefault: "clafoutis",
            imageData: nil,
            tempsPreparation: 15,
            tempsCuisson: 25,
            portions: 8,
            portionsInitiales: 8,
            ingredients: [
                Ingredient(nom: "Poires", quantite: 6, unite: "pcs"),
                Ingredient(nom: "Sucre", quantite: 180, unite: "g"),
                Ingredient(nom: "Oeufs", quantite: 6, unite: "pcs"),
                Ingredient(nom: "Farine", quantite: 125, unite: "g"),
                Ingredient(nom: "Crème liquide", quantite: 50, unite: "cl"),
                Ingredient(nom: "Lait", quantite: 25, unite: "cl"),
                Ingredient(nom: "Beurre", quantite: 10, unite: "g")
            ],
            description: "Un clafoutis aux poires doux et parfumé, préparé avec une pâte légère et onctueuse. C’est un dessert traditionnel, facile à réaliser, qui met en valeur la douceur du fruit."
        )
    ]
}
