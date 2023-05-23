//
//  LocalizacaoView.swift
//  BirdDex
//
//  Created by Cicero Nascimento on 13/05/22.
//

import SwiftUI
import MapKit
import CoreLocation

struct LocalizacaoView: View {

    // Strings
    let location = "Localizar"

    var passaro: Passaro
    var coordinate: CLLocationCoordinate2D
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: -3.7627579,
                                                                                  longitude: -38.5692384),
                                                   span: MKCoordinateSpan(latitudeDelta: 150,
                                                                          longitudeDelta: 150))
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                Section {
                    Map(coordinateRegion: $region)
                        .frame(width: 360, height: 500)
                        .onAppear {
                            setRegion(coordinate)
                        }
                        .overlay(
                            ZStack(alignment: .center) {
                                Rectangle()
                                    .foregroundColor(.white.opacity(0.01))
                                Circle()
                                    .scale(0.7, anchor: .center)
                                    .foregroundColor(passaro.habitat.color)
                                .opacity(0.2)
                                .overlay {
                                    VStack {
                                        Image(passaro.nomeImagem)
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 80, height: 80, alignment: .center)
                                    }
                                }
                            }
                        )
                }
                .cornerRadius(20)
                .headerProminence(.increased)
            }
            .navigationTitle(location)
            .navigationBarTitleDisplayMode(.automatic)
        }
    }
    private func setRegion(_ coordinate: CLLocationCoordinate2D) {
        region = MKCoordinateRegion(
            center: coordinate, span: MKCoordinateSpan(latitudeDelta: 10.8, longitudeDelta: 10.8))
    }
}
struct LocalizacaoView_Previews: PreviewProvider {
    static var previews: some View {
        let testService = PassarosService().passaros[1]
        LocalizacaoView(passaro: testService,
                        coordinate: CLLocationCoordinate2D(latitude: -3.7627579,
                                                           longitude: -38.5692384))
    }
}
