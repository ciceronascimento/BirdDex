//
//  CatalogoView.swift
//  BirdDex
//
//  Created by Cicero Nascimento on 11/05/22.
//

import SwiftUI

struct CatalogoView: View {
    @State var showingSheet: Bool = false
//    @State var clique = PassarosService().passaros[
    
    var passaros = PassarosService().passaros
    let alignment: VerticalAlignment = .top
//    let stackSpacing: CGFloat = 0.1
//    let passaros = ["pombo", "testePassaro1", "pato", "testePassaro1"]
    
    @State private var busca = ""
    
    let colunas: Int = 2
    let espacosGrid: CGFloat = 0
//    var passarosArray: [Passaro]
    
    var body: some View {
        
        NavigationView{
            
            
            VStack(alignment: .leading){

                ScrollView(.vertical){
                    Text("Destaques")
                        .font(.title)
                        .bold()

                    ScrollView(.horizontal){
                        HStack{
                            Section{
                                ForEach(passaros.shuffled(), id: \.self) { passaro in
                                    CardGrandeAnimalView(passaro: passaro)

                                        }
                            }
                        }
                    }
                    Text("Catálogo")
                        .font(.title)
                        .bold()
                    LazyVGrid(columns: Array(repeating: .init(.flexible(), spacing: espacosGrid), count: colunas), spacing: espacosGrid) {
                        
                        ForEach(passaros, id: \.self) { passaro in
//                            passarosArray.append(passaro)
                            CardAnimalView(passaro: passaro)
                        }
                    }
                }
                .navigationTitle("Descobrir")
                .navigationBarTitleDisplayMode(.inline)
                .searchable(text: $busca)
            }
        }
    }
}

struct CatalogoView_Previews: PreviewProvider {
    static var previews: some View {
        CatalogoView()
            .preferredColorScheme(.dark)
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
