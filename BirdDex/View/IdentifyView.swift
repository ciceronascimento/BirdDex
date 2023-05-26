//
//  IdentifyView.swift
//  BirdDex
//
//  Created by Cicero Nascimento on 23/05/23.
//

import SwiftUI
import PhotosUI

struct IdentifyView: View {

    let identify = "Identificar"
    let identifyNew = "Identificar novo"
    let observed = "Observados"

    var passaros = PassarosService().passaros
    @State var identified = ObservedBirds().observedBirds

    let colunas: Int = 2
    let espacosGrid: CGFloat = 0

    @State var selectedItems: [PhotosPickerItem] = []

    var body: some View {
        NavigationView {
                ScrollView(.vertical) {
                    VStack {
                        Spacer(minLength: 20)
                        LazyVGrid(columns: Array(repeating: .init(.flexible(),
                                                                  spacing: espacosGrid),
                                                 count: colunas),
                                  spacing: espacosGrid) {
                            ForEach(identified, id: \.self) { bird in
                                CardAnimalView(category: bird)
                            }
                        }
                    }
//                }
                .cornerRadius(10)
            }.navigationTitle(("\(observed) (\(identified.count))"))
                .toolbar {
                    PhotosPicker(selection: $selectedItems, label: {
                        VStack {
                            Image(systemName: "camera.fill")
                                .foregroundColor(.cyan)
                            Text("Identificar")
                                .font(.caption2)
                                .foregroundColor(.cyan)
                        }
                    }).onChange(of: selectedItems) { _ in
                        for selected in selectedItems {
                            identified.append(Passaro(id: UUID(),
                                                      nome: "teste",
                                                      nomeImagem: "teste",
                                                      tipo: "teste",
                                                      habitat: .extinto,
                                                      background: .backExtinto,
                                                      latitudePassaro: 0000,
                                                      longigudePassaro: 0000))
                        }
                    }
                }
        }
    }
}

struct IdentifyView_Previews: PreviewProvider {
    static var previews: some View {
        IdentifyView()
    }
}
