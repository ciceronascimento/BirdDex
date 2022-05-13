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
        @Binding var showingSheet: Bool

    var body: some View {
        Button {
            self.showingSheet = true
        } label: {
            ZStack{
                
                VStack(alignment: .leading){
                    Text(passaro.nome)
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding(.top)
                        .padding(.leading)
                    
                    HStack(){
                        Text("Tipo")
                            .font(.subheadline).bold()
                            .foregroundColor(.white)
                            .padding(.horizontal, 16)
                            .padding(.vertical, 8)
                            .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(Color.white.opacity(0.25))
                            )
                            .frame(width: 100, height: 24)
                        Image(passaro.nomeImagem)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 68, height: 68)
                            .padding([.bottom, .trailing], 4)
                            .overlay(
                                Circle()
                                    .scale(1.4, anchor: .center)
                                    .fill(Color.white.opacity(0.25))
                            )
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
    //        .background(habitat.color)
            .cornerRadius(12)
            .shadow(radius: 10)
        .padding(.bottom)
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
