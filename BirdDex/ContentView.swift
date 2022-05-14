//
//  ContentView.swift
//  BirdDex
//
//  Created by Cicero Nascimento on 11/05/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            CatalogoView()
                .tabItem {
                    Image(systemName: "binoculars")
                    Text("Descobrir")
                }
            LocalizacaoView()
                .tabItem {
                    Image(systemName: "map")
//                    Image(systemName: "questionmark.circle")
                    Text("Localização")
                }
            FavoritosView()
                .tabItem {
                    Image(systemName: "star")
                    Text("Favoritos")
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
