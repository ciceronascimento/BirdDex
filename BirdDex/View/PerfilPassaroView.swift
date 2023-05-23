//
//  PerfilPassaroView.swift
//  BirdDex
//
//  Created by Cicero Nascimento on 12/05/22.
//

import SwiftUI
import MapKit

struct PerfilPassaroView: View {

    // Strings
    let family = NSLocalizedString("family", comment: "")
    let habitat = NSLocalizedString("habitat", comment: "")
    let food = NSLocalizedString("food", comment: "")
    let location = NSLocalizedString("location", comment: "")

    var passaro: Passaro
    var body: some View {

        NavigationView {
            ZStack {
                VStack(alignment: .center) {
                    Spacer()
                    RoundedRectangle(cornerRadius: 40)
                        .foregroundColor(.white)
                        .scaledToFit()
                        .padding()
                        .frame(height: 530, alignment: .center)
                }
            }
            .background(passaro.habitat.color)
            .overlay {
                VStack {
                    Image(passaro.nomeImagem)
                        .resizable()
                        .scaledToFit()
                        .frame(alignment: .center)
                        .padding(.bottom, 427)
                }
                VStack(alignment: .center) {
                    Text(passaro.nome)
                        .font(.title)
                        .bold()
                        .padding(.bottom, 40)
                        .foregroundColor(.black)
                    VStack(alignment: .leading) {
                        Section {
                            HStack {
                                Text("\(family): ")
                                    .font(.title2)
                                    .foregroundColor(.black)
                                    .bold()
                                Text(passaro.tipo)
                                    .font(.subheadline).bold()
                                    .foregroundColor(passaro.habitat.color)
                                    .padding(.horizontal, 16)
                                    .padding(.vertical, 8)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 20)
                                            .fill(passaro.habitat.color.opacity(0.25))
                                    )
                                    .frame(width: 100, height: 24)
                            }
                            HStack {
                                Text("\(habitat): ")
                                    .font(.title2)
                                    .bold()
                                    .foregroundColor(.black)
                                Text("\(passaro.habitat.rawValue)")
                                    .font(.title2)
                                    .foregroundColor(.black)
                            }
                            .padding(.bottom, 1)
                            HStack {
                                Text("\(food): ")
                                    .font(.title2)
                                    .bold()
                                    .foregroundColor(.black)
                                Text("Onivoro")
                                    .font(.title2)
                                    .foregroundColor(.black)

                            }
                        }
                        .padding(.horizontal, -50)
                    }

                }
                VStack {
                    NavigationLink(destination: {
                        LocalizacaoView(passaro: passaro,
                                        coordinate: CLLocationCoordinate2D(latitude: passaro.latitudePassaro,
                                                                           longitude: passaro.longigudePassaro))
                    }, label: {
                        Text("\(location)")
                            .foregroundColor(.white)
                            .buttonStyle(.borderedProminent)
                            .controlSize(.regular)
                    })
                    .padding()
                    .background(passaro.habitat.color)
                    .clipShape(Capsule())
                }
                .padding(.top, 300)
            }
        }
        .navigationBarTitle("", displayMode: .inline)
    }
}

struct PerfilPassaroView_Previews: PreviewProvider {
    static var previews: some View {
        let testService = PassarosService().passaros[1]
        PerfilPassaroView(passaro: testService)
            .previewInterfaceOrientation(.portrait)
    }
}
