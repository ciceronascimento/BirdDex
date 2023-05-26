//
//  BuscaView.swift
//  BirdDex
//
//  Created by Cicero Nascimento on 19/05/22.
//

import SwiftUI

struct BuscaView: View {
    var nomesFIltrados: [Category]
    let colunas = 2
    var body: some View {
        LazyVGrid(columns: Array(repeating: .init(.flexible(), spacing: 33), count: colunas), spacing: 1) {
            ForEach(nomesFIltrados, id: \.self) { category in
                BirdCardView(category: category)
            }
        }
    }
}