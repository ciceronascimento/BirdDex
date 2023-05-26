//
//  CatalogoView.swift
//  BirdDex
//
//  Created by Cicero Nascimento on 11/05/22.
//

import SwiftUI

struct CatalogoView: View {

    // Strings
    let title = NSLocalizedString("title", comment: "")
    let subTitle1 = NSLocalizedString("sub_title1", comment: "")
    let subTitle2 = NSLocalizedString("sub_title2", comment: "")

    var passaros = PassarosService().passaros
    var category = CategoryService().categoryBirds

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
                        Text(subTitle1)
                            .font(.title)
                            .bold()
                            .padding(.horizontal, 15)
                        Spacer()
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
                        Text(subTitle2)
                            .font(.title)
                            .bold()
                            .padding(.horizontal, 15)
                        Spacer()
                    }
                    LazyVGrid(columns: Array(repeating: .init(.flexible(),
                                                              spacing: espacosGrid),
                                             count: colunas),
                              spacing: espacosGrid) {
                        ForEach(nomesFiltrados, id: \.self) { bird in
                            BirdCardView(category: bird)
                        }
                    }
                }
                .navigationTitle(title)
                .searchable(text: $busca, placement: .navigationBarDrawer(displayMode: .always), prompt: "") {
                    BuscaView(nomesFIltrados: nomesFiltrados)
                }
            }
        }
    }

    var nomesFiltrados: [Category] {
        if busca.isEmpty {
            return category
        } else {
            return category.filter { $0.name.contains(busca)  }
        }
    }
}

struct CatalogoView_Previews: PreviewProvider {
    static var previews: some View {
        CatalogoView()
            .preferredColorScheme(.dark)
    }
}
