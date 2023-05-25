//
//  CardAnimalView.swift
//  BirdDex
//
//  Created by Cicero Nascimento on 11/05/22.
//

import SwiftUI

struct CardAnimalView: View {

    // Strings
    let closeWindow = NSLocalizedString("close_window", comment: "")

    var passaro: Passaro

    @State private var selectedMaterial: Material = .regularMaterial
    @State var mostrarSheet = false

    @Environment(\.dismiss) private var dismiss
    @Environment(\.dismissSearch) private var dismissSearch

    var body: some View {

        Button {
            self.mostrarSheet = true
            dismiss()
            dismissSearch()
        }

        label: {
            ZStack {
                VStack(alignment: .leading) {
                    Text(passaro.nome)
                        .lineLimit(1)
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding(.top)
                        .padding(.leading)

                    HStack {
                        Text(passaro.tipo)
                            .font(.subheadline).bold()
                            .foregroundColor(.white)
                            .padding(.horizontal, 16)
                            .padding(.vertical, 8)
                            .lineLimit(nil)
                            .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(Color.white.opacity(0.25))
                            )
                            .fixedSize(horizontal: false, vertical: true)
                            .frame(width: 100, height: 24)

                        Image(passaro.nomeImagem)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 68, height: 68)
                            .padding([.bottom, .trailing], 4)
                            .overlay(
                                Circle()
                                    .scale(1.3, anchor: .center)
                                    .fill(Color.white.opacity(0.25))
                            )
                    }
                    .padding(.top)
                }

            }
            .sheet(isPresented: $mostrarSheet) {
                NavigationView {
                    PerfilPassaroView(passaro: passaro)
                        .toolbar {
                            ToolbarItem(placement: .primaryAction) {

                                Button(action: {
                                    self.mostrarSheet = false
                                }, label: {
                                    Text("Fechar")
                                        .fontWeight(.semibold)
                                        .foregroundColor(.white)
                                })
                            }

                        }
                }
            }
            .background(passaro.habitat.color)
            .cornerRadius(12)
            .shadow(radius: 10)
            .padding(.bottom)
        }

    }
}

struct CardAnimalView_Previews: PreviewProvider {
    static var previews: some View {
        let testService = PassarosService().passaros[1]
        CardAnimalView(passaro: testService)
            .previewLayout(.sizeThatFits)
    }
}
