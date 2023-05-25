//
//  CellCategoryView.swift
//  BirdDex
//
//  Created by Cicero Nascimento on 25/05/23.
//

import SwiftUI

struct CellCategoryView: View {

    @State var mostrarSheet = false

    var body: some View {
        Button(action: {
            self.mostrarSheet = true
        }, label: {
            HStack {
                Image("gaviao")
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: 80, maxHeight: 80)
                VStack {
                    Text("Nome")
                        .font(.title2)
                    Text("Nome")
                        .font(.subheadline)
                    Text("Nome")
                        .font(.subheadline)
                }
            }
            .sheet(isPresented: $mostrarSheet, content: {
                PerfilPassaroView(passaro: Passaro(id: UUID(),
                                                   nome: "Teste",
                                                   nomeImagem: "gaviao",
                                                   tipo: "Teste",
                                                   habitat: .montanha,
                                                   background: .backMontanha,
                                                   latitudePassaro: 000,
                                                   longigudePassaro: 000))
            })
        })
    }
}

struct CellCategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CellCategoryView()
    }
}
