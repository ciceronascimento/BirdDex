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
                        Label("Nova barra de busca!", systemImage: "location.magnifyingglass")
                        
                        Label("Agora é possível localizar o habitat dos pássaros!!", systemImage: "map")
                        Label("Bugs resolvidos!", systemImage: "ladybug")
//                        Text("Nova aba de mapa")
//                        Text("bugs resolvidos!")
                    }
                    
                    Section("Novidades a caminho"){
                        Label("Localização das aves no mapa mundo", systemImage: "map")
                        Label("Lista de favoritos", systemImage: "star")
                        Label("Adicione uma ave que ainda não avistamos!", systemImage: "binoculars")
//                            .lineSpacing(0.1)
                    }
                    
                    Section("Versão atual:"){
                        Text("v0.5.1")
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
