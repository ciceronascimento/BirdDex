//
//  CardGrandeAnimalView.swift
//  BirdDex
//
//  Created by Cicero Nascimento on 13/05/22.
//

import SwiftUI

struct CardGrandeAnimalView: View {
    
    //    var imagemFundo:String
        var passaro: Passaro
        
    //    var id:Int
    //    var nome:String
    //    var nomeImagem:String
    //    var caracteristica:String
    ////    var caracteristica:Caracteristica
    //    var habitat:Habitat
        
        @State private var selectedMaterial:Material = .regularMaterial
        @State var showingSheet = false

    var body: some View {
        Button {
            self.showingSheet = true
        } label: {
            ZStack{
                
                VStack(alignment: .leading){
                    Text(passaro.nome)
                        .font(.title)
                        .bold()
                        .foregroundColor(.white)
                        .padding(.top)
                        .padding(.leading)
                    
                    HStack(){
                        Spacer()
                            .frame(width: 200, height: 24)
                        Image(passaro.nomeImagem)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 150, height: 150)
//                            .padding()
                            .overlay(
                                Circle()
                                    .scale(2.2, anchor: .center)
                                    .fill(Color.white.opacity(0.25))
                            )
                    }
                }
                .fullScreenCover(isPresented: $showingSheet) {
                        NavigationView {
                            PerfilPassaroView(passaro: passaro)
                                .toolbar {
                                    ToolbarItem(placement: .primaryAction) {
                                        Button(action: {
                                            self.showingSheet = false
                                        }) {
                                            Label("Fechar", systemImage: "x.circle.fill")
                                                .foregroundColor(.white)
                                        }
                                    }
                                }
                        }
                    }
                
                
    //            RoundedRectangle(cornerRadius: 24, style: .continuous)
    //                .foregroundColor(.accentColor)
    //                .aspectRatio(1.618, contentMode: .fit)
    //                .background(selectedMaterial, in:
    //                                RoundedRectangle(cornerRadius: 16.0))
    //            HStack{
    //                Spacer()
    //                    .scaledToFit()
    //
    //                Spacer()
    //
    //                Image(imagemPassaro)
    //                    .resizable()
    //                    .scaledToFit()
    //                Spacer()
    //            }
            }
            .background(passaro.habitat.color)
//            .background(Image("testeBackground"))
    //        .background(habitat.color)
            .cornerRadius(12)
//            .shadow(radius: 10)
            .padding([.bottom, .horizontal], 2.5)
        }
//        .padding([.top, .horizontal])
//        Spacer()
    }
}

//struct CardGrandeAnimalView_Previews: PreviewProvider {
//    static var previews: some View {
//        var passaro:PassarosService
//        var showwingSheet = false
//        CardGrandeAnimalView(passaro: passaro.passaros[1], ShowingSheet: showwingSheet)
//    }
//}
