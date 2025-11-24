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
            List($repository.recettes.indices, id: \.self) { index in
                
                NavigationLink {
                    DetailRecetteView(recette: $repository.recettes[index])
                } label: {
                    RecetteLigneView(recette: repository.recettes[index])
                }
            }
            .navigationTitle("Recettes")
        }
    }
}

#Preview {
    ListeRecettesView()
}
