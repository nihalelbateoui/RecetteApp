//
//  ListeRecettesView.swift
//  RecetteApp
//
//  Created by EL-BATEOUI Nihal on 21/11/2025.
//

import SwiftUI

struct ListeRecettesView: View {

    @StateObject var repository = Injecteur.recetteRepository as! RecetteRepositoryDummyImpl

    var body: some View {
        NavigationStack {
            List(repository.recettes) { recette in
                NavigationLink(destination: DetailRecetteView(recette: recette)) {
                    RecetteLigneView(recette: recette)
                }
            }
            .navigationTitle("Recettes")
        }
    }
}
