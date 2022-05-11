//
//  CatalogoView.swift
//  BirdDex
//
//  Created by Cicero Nascimento on 11/05/22.
//

import SwiftUI

struct CatalogoView: View {
    let alignment: VerticalAlignment = .top
    let stackSpacing: CGFloat = 0.1
    let passaros = ["pombo", "testePassaro1", "pato", "testePassaro1"]
    
    @State private var busca = ""
    
    let colunas: Int = 2
    let espacosGrid: CGFloat = 0
    
    var body: some View {
        
        NavigationView{
            
            ScrollView(.vertical){

                LazyVGrid(columns: Array(repeating: .init(.flexible(), spacing: espacosGrid), count: colunas), spacing: espacosGrid) {
                    
                    ForEach(passaros, id: \.self) { passaro in
                        CardAnimalView(imagemPassaro: passaro)
                    }
    
                }
            }
            .navigationTitle("Descobrir")
            .navigationBarTitleDisplayMode(.automatic)
            .searchable(text: $busca, placement: .navigationBarDrawer(displayMode: .always))
            
        }
    }
}

struct CatalogoView_Previews: PreviewProvider {
    static var previews: some View {
        CatalogoView()
    }
}



//                HStack(alignment: alignment,
//                    spacing: stackSpacing
//                ) {
//
//
//                    CardAnimalView(imagemPassaro: "testePassaro1")
//
//                    CardAnimalView(imagemPassaro: "pombo")
//
//
//                }
