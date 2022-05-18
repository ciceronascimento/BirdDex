//
//  ContentView.swift
//  BirdDex
//
//  Created by Cicero Nascimento on 11/05/22.
//

import SwiftUI
import MapKit

struct ContentView: View {
    var body: some View {
        TabView {
            CatalogoView()
                .tabItem {
                    Image(systemName: "binoculars")
                    Text("Descobrir")
                }
//            LocalizacaoView(coordinate: CLLocationCoordinate2D(latitude: -3.7627579, longitude: -38.5692384))
//                .tabItem {
//                    Image(systemName: "map")
////                    Image(systemName: "questionmark.circle")
//                    Text("Localização")
//                }
            InfoView()
                .tabItem {
                    Image(systemName: "info.circle")
                    Text("info")
                }
        }
        .font(.headline)
        .accentColor(.cyan)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
