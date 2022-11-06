//
//  PokeDexView.swift
//  PokeDex
//
//  Created by Félix Étienne Labrie on 2022-11-04.
//

import SwiftUI

struct PokeDexView: View {
    
    private let gridItems = [GridItem(.flexible()), GridItem(.flexible())]
    
    @ObservedObject var viewModel = PokemonViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: gridItems, spacing: 16) {
                    ForEach(viewModel.pokemon) { pokemon in
                        PokeCard(pokemon: pokemon, viewModel: viewModel)
                    }
                }
            }
            .navigationTitle("Felix's PokeDex")
        }
    }
}

struct PokeDexView_Previews: PreviewProvider {
    static var previews: some View {
        PokeDexView()
    }
}
