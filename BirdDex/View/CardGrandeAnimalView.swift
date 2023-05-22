//
//  CardGrandeAnimalView.swift
//  BirdDex
//
//  Created by Cicero Nascimento on 13/05/22.
//

import SwiftUI

struct CardGrandeAnimalView: View {

        var passaro: Passaro

        @State private var selectedMaterial: Material = .regularMaterial
        @State var showingSheet = false

    var body: some View {
        Button {
            self.showingSheet = true
        } label: {
            ZStack {

                VStack(alignment: .leading) {
                    Text(passaro.nome)
                        .font(.title)
                        .bold()
                        .foregroundColor(.white)
                        .shadow(color: .black, radius: 2, x: 1, y: 1)
                        .padding(.top)
                        .padding(.leading)
                        .padding(.bottom, -8)

                    HStack {

                        Spacer()
                            .frame(width: 200, height: 24)
                        Image(passaro.nomeImagem)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 150, height: 150)

                        Spacer()
                            .frame(width: 30, height: 24)

                    }
                    .background(
                        .thinMaterial, in: RoundedRectangle(cornerRadius: 10)

                        .scale(0.95, anchor: .center)
                    )
                    .padding(.bottom, 6)
                }

                .sheet(isPresented: $showingSheet) {
                        NavigationView {
                            PerfilPassaroView(passaro: passaro)
                                .toolbar {
                                    ToolbarItem(placement: .primaryAction) {
                                        Button(action: {
                                            self.showingSheet = false
                                        }) {
                                            Text("Fechar")
                                                .fontWeight(.semibold)
                                                .foregroundColor(.white)
                                        }
                                    }
                                }
                        }
                    }

            }
            .background(
                Image(passaro.background.rawValue)
                .resizable()
            )
            .cornerRadius(12)
            .padding([.bottom, .horizontal], 2.5)
        }

    }
}

struct CardGrandeAnimalView_Previews: PreviewProvider {
    static var previews: some View {
        let testService = PassarosService().passaros[1]
        CardGrandeAnimalView(passaro: testService)
            .previewLayout(.sizeThatFits)
    }
}
