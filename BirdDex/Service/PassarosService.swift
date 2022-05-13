//
//  PassarosService.swift
//  BirdDex
//
//  Created by Cicero Nascimento on 13/05/22.
//

import Foundation

struct PassarosService {
    
    let passaros: [Passaro] = [
        Passaro(id: 1, nome: "Pato", nomeImagem: "pato", habitat: Habitat.floresta),
        Passaro(id: 2, nome: "Pombo", nomeImagem: "pombo", habitat: Habitat.floresta),
        Passaro(id: 3, nome: "Gavião", nomeImagem: "gaviao", habitat: Habitat.montanha),
        Passaro(id: 4, nome: "Flamingo", nomeImagem: "flamingo", habitat: Habitat.oceano),
        Passaro(id: 5, nome: "Abutre", nomeImagem: "abutre", habitat: Habitat.deserto)
    ]
}


