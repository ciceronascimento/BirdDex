//
//  InfoView.swift
//  BirdDex
//
//  Created by Cicero Nascimento on 15/05/22.
//

import SwiftUI

struct InfoView: View {
    var body: some View {
        NavigationView{
            
            
            VStack(alignment: .leading){
                
                List(){
                    
                    Section("O que há de novo"){
                        Label("Os cards agora abrem!", systemImage: "lanyardcard")
                        
                        Label("Nova aba de mapa!", systemImage: "map")
                        Label("Bugs resolvidos!", systemImage: "ladybug")
//                        Text("Nova aba de mapa")
//                        Text("bugs resolvidos!")
                    }
                    
                    Section("Novidades a caminho"){
                        Label("Localização das aves", systemImage: "location.magnifyingglass")
                        Label("Lista de favoritos", systemImage: "star")
                        Label("Adicione uma ave que ainda não avistamos!", systemImage: "binoculars")
//                            .lineSpacing(0.1)
                    }
                    
                    Section("Versão atual:"){
                        Text("v0.1.1")
                    }
                }
                .listStyle(.insetGrouped)
            }
            .navigationTitle("Informações")
        }
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}
