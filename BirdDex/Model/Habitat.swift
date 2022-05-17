//
//  Habitat.swift
//  BirdDex
//
//  Created by Cicero Nascimento on 12/05/22.
//

import Foundation
import SwiftUI

enum Habitat: String {
    case Montanha
    case Oceano
    case Floresta
    case Deserto
    case Extinto
    case Neve
    
    var color: Color {
        switch self {
        case .Montanha:
            return Color.brown
        case .Oceano:
            return Color.cyan
        case .Floresta:
            return Color.green
        case .Deserto:
            return Color.init(red: 255 / 255 , green: 148 / 255 , blue: 0)
        case .Extinto:
            return Color.init(red: 28 / 255 , green: 49 / 255 , blue: 58 / 255)
        case .Neve:
            return Color.gray
        }
        
    }
}
