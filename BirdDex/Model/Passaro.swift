//
//  Passaro.swift
//  BirdDex
//
//  Created by Cicero Nascimento on 11/05/22.
//

import Foundation


struct Passaro: Hashable {
    let id: Int
    let nome: String
    let nomeImagem: String
    let tipo:String
//    let caracteristica: Caracteristica
    let habitat: Habitat
    let background: Background
}
