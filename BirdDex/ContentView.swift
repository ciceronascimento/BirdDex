//
//  ContentView.swift
//  BirdDex
//
//  Created by Cicero Nascimento on 11/05/22.
//

import SwiftUI
import MapKit

struct ContentView: View {

    // Strings
    let discoverMenu = NSLocalizedString("discover_menu", comment: "")
    let identifyMenu = NSLocalizedString("identify_menu", comment: "")
    let infoMenu = NSLocalizedString("info_menu", comment: "")

    var body: some View {
        TabView {
            CatalogoView()
                .tabItem {
                    Image(systemName: "binoculars")
                    Text(discoverMenu)
                }
            IdentifyView()
                .tabItem {
                    Image(systemName: "camera.fill")
                    Text(identifyMenu)
                }
//            InfoView()
            CategoryView()
                .tabItem {
                    Image(systemName: "info.circle")
                    Text(infoMenu)
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
