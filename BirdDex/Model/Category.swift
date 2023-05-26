//
//  Category.swift
//  BirdDex
//
//  Created by Cicero Nascimento on 26/05/23.
//

import Foundation

struct Category: Hashable {
    let name: String
    let habitat: Habitat
    let imageName: String
    let background: Background
    let birds: [Bird]
}
