//
//  Identified.swift
//  BirdDex
//
//  Created by Cicero Nascimento on 24/05/23.
//

import Foundation
import MapKit

struct UserBirds: Hashable {
    let id: UUID
    let nome: String
    let nomeImagem: UIImage
    let tipo: String
    let habitat: Habitat
    let background: Background
}
