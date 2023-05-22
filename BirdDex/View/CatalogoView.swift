//
//  CatalogoView.swift
//  BirdDex
//
//  Created by Cicero Nascimento on 11/05/22.
//

import SwiftUI

struct CatalogoView: View {

    var passaros = PassarosService().passaros
    let passarosDestaque = PassarosService().passaros
    let alignment: VerticalAlignment = .top
    @State private var busca = ""
    let colunas: Int = 2
    let espacosGrid: CGFloat = 0

    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                ScrollView(.vertical) {
                    HStack {
                        Text("Destaques")
                            .font(.title)
                            .bold()
                            .padding(.horizontal, 15)
                    }
                    ScrollView(.horizontal) {
                        HStack {
                            Section {
                                ForEach(passarosDestaque.shuffled(), id: \.self) { passaro2 in
                                    CardGrandeAnimalView(passaro: passaro2)
                                        }
                            }
                        }
                    }
                    HStack {
                        Text("Catálogo")
                            .font(.title)
                            .bold()
                            .padding(.horizontal, 15)
                    }
                    LazyVGrid(columns: Array(repeating: .init(.flexible(),
                                                              spacing: espacosGrid),
                                             count: colunas),
                              spacing: espacosGrid) {
                        ForEach(nomesFiltrados, id: \.self) { passaro in
                            CardAnimalView(passaro: passaro)
                        }
                    }
                }
                .navigationTitle("Descobrir")
                .searchable(text: $busca, placement: .navigationBarDrawer(displayMode: .always)) {
                    BuscaView(nomesFIltrados: nomesFiltrados)
                }
            }
        }
    }

    var nomesFiltrados: [Passaro] {
        if busca.isEmpty {
            return passaros
        } else {
            return passaros.filter { $0.nome.contains(busca)  }
        }
    }
}

struct CatalogoView_Previews: PreviewProvider {
    static var previews: some View {
        CatalogoView()
            .preferredColorScheme(.dark)
    }
}
