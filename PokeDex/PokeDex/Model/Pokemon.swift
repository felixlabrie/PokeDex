//
//  Pokemon.swift
//  PokeDex
//
//  Created by Félix Étienne Labrie on 2022-11-04.
//

import Foundation

struct Pokemon: Decodable, Identifiable {
    let id: Int
    let name: String
    let imageUrl: String
    let type: String
}

let MOCK_POKEMON: [Pokemon] = [
    .init(id: 0, name: "Pikachu", imageUrl: "pikachu", type: "lightning"),
    .init(id: 1, name: "Ivysaur", imageUrl: "pikachu", type: "lightning"),
    .init(id: 2, name: "Venusaur", imageUrl: "pikachu", type: "lightning"),
    .init(id: 3, name: "Charmander", imageUrl: "pikachu", type: "fire"),
    .init(id: 4, name: "Charmeleon", imageUrl: "pikachu", type: "fire")
]
