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
                .badge(10)
                .tabItem {
                    Image(systemName: "binoculars")
                    Text("Descobrir")
                }
            Text("Quem é esse pokemon view")
                .tabItem {
                    Image(systemName: "questionmark.circle")
                    Text("Que animal é esse?")
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
