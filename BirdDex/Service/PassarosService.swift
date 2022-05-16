//
//  PassarosService.swift
//  BirdDex
//
//  Created by Cicero Nascimento on 13/05/22.
//

import Foundation

struct PassarosService {
    
    let passaros: [Passaro] = [
        Passaro(id: 1, nome: "Pato-real", nomeImagem: "pato", tipo:"Pato", habitat: Habitat.floresta),
        Passaro(id: 2, nome: "Pombo", nomeImagem: "pombo", tipo:"Pombo", habitat: Habitat.floresta),
        Passaro(id: 3, nome: "Gavião", nomeImagem: "gaviao", tipo:"Gavião", habitat: Habitat.montanha),
        Passaro(id: 4, nome: "Flamingo", nomeImagem: "flamingo", tipo:"Flamingo", habitat: Habitat.oceano),
        Passaro(id: 5, nome: "Abutre", nomeImagem: "abutre", tipo:"Abutre", habitat: Habitat.deserto),
        Passaro(id: 7, nome: "Pato-mandarim", nomeImagem: "pato-mandarim", tipo:"Pato", habitat: Habitat.floresta),
        Passaro(id: 8, nome: "Pato-pequim", nomeImagem: "pato-pequim", tipo:"Pato", habitat: Habitat.floresta),
        Passaro(id: 9, nome: "Dodo", nomeImagem: "dodo", tipo:"Extinto", habitat: Habitat.extinto)
    ]
}


