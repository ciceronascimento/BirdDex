//
//  Habitat.swift
//  BirdDex
//
//  Created by Cicero Nascimento on 12/05/22.
//

import Foundation
import SwiftUI

enum Habitat: String {
    case montanha
    case oceano
    case floresta
    case deserto
    case extinto
    case neve

    var color: Color {
        switch self {
        case .montanha:
            return Color.brown
        case .oceano:
            return Color.cyan
        case .floresta:
            return Color.green
        case .deserto:
            return Color.init(red: 255 / 255,
                              green: 148 / 255,
                              blue: 0)
        case .extinto:
            return Color.init(red: 28 / 255,
                              green: 49 / 255,
                              blue: 58 / 255)
        case .neve:
            return Color.gray
        }

    }
}
