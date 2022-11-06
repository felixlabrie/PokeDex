//
//  PokeCard.swift
//  PokeDex
//
//  Created by Félix Étienne Labrie on 2022-11-04.
//

import SwiftUI
import Kingfisher

struct PokeCard: View {
    
    let pokemon: Pokemon
    
    let viewModel: PokemonViewModel
    
    let backgroundColor: Color
    
    init(pokemon: Pokemon, viewModel: PokemonViewModel) {
        self.pokemon = pokemon
        self.viewModel = viewModel
        self.backgroundColor = Color(viewModel.backgroundColor(forType: pokemon.type))
    }
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                Text(pokemon.name.capitalized)
                    .font(.headline)
                    .padding(.top, 8)
                    .padding(.leading)
                HStack {
                    Text(pokemon.type)
                        .font(.subheadline.bold())
                        .padding(.horizontal, 16)
                        .padding(.vertical, 8)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .fill(.white.opacity(0.25))
                        )
                        .frame(width: 100, height: 24)
                    KFImage(URL(string: pokemon.imageUrl))
                        .resizable()
                        .scaledToFit()
                        .frame(width: 68, height: 68)
                        .padding([.bottom, .trailing], 4)
                }
            }
        }
        .background(backgroundColor)
        .cornerRadius(15)
        .foregroundColor(.white)
        .shadow(color: backgroundColor, radius: 6, x: 0.0, y: 0.0)
    }
}

//struct PokeCard_Previews: PreviewProvider {
 //   static var previews: some View {
 //       PokeCard(pokemon: MOCK_POKEMON[3])
 //   }
//}
