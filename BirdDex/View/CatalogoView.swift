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
//    let passarosDestaque = PassarosService().passaros
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
                    
                    HStack{
                        Text("Destaques")
                            .font(.title)
                            .bold()
                            .padding(.horizontal, 15)
                        Spacer()
                    }

                    ScrollView(.horizontal){
                        HStack{
                            Section{
                                ForEach(nomesFiltrados.shuffled(), id: \.self) { passaro2 in
                                    CardGrandeAnimalView(passaro: passaro2)

                                        }
                            }
                        }
                    }
                    HStack{
                        
                        Text("Catálogo")
                            .font(.title)
                            .bold()
                            .padding(.horizontal, 15)
                        Spacer()
                        Button{
                        } label: {
                            Image(systemName: "slider.horizontal.3")
                        }.padding(.horizontal, 15)
                    }
                    LazyVGrid(columns: Array(repeating: .init(.flexible(), spacing: espacosGrid), count: colunas), spacing: espacosGrid) {
                        
                        ForEach(nomesFiltrados, id: \.self) { passaro in
//                            passarosArray.append(passaro)
                            CardAnimalView(passaro: passaro)
                        }
                    }
                }
                .navigationTitle("Descobrir")
                .navigationBarTitleDisplayMode(.inline)
                .searchable(text: $busca) {
                    LazyVGrid(columns: Array(repeating: .init(.flexible(), spacing: 33), count: colunas), spacing: 1) {
                        
                        ForEach(nomesFiltrados, id: \.self) { passaro in
//                            passarosArray.append(passaro)
                            CardAnimalView(passaro: passaro)
                        }
                    }
                }
            }
        }
    }
    var nomesFiltrados: [Passaro] {
        if busca.isEmpty {
            return passaros
        } else {
            return passaros.filter { $0.nome.contains(busca)  }
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
