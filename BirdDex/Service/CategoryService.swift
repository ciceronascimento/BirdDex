//
//  CategoryService.swift
//  BirdDex
//
//  Created by Cicero Nascimento on 26/05/23.
//

import Foundation

struct CategoryService {
    var categoryBirds: [Category] = [
        Category(name: "Pato",
                 habitat: Habitat.floresta,
                 imageName: "pato",
                 background: Background.backFloresta,
                 birds: []
        ),

        Category(name: "Gaviao",
                 habitat: Habitat.montanha,
                 imageName: "gaviao",
                 background: Background.backMontanha,
                 birds: []
        )
    ]
}
