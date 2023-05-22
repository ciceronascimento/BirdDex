//
//  Passaro.swift
//  BirdDex
//
//  Created by Cicero Nascimento on 11/05/22.
//

import Foundation
import MapKit

struct Passaro: Hashable {
    let id: UUID
    let nome: String
    let nomeImagem: String
    let tipo: String
    let habitat: Habitat
    let background: Background
    let latitudePassaro: CLLocationDegrees
    let longigudePassaro: CLLocationDegrees
}
