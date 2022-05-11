//
//  CardAnimalView.swift
//  BirdDex
//
//  Created by Cicero Nascimento on 11/05/22.
//

import SwiftUI



struct CardAnimalView: View {
    
    
//    var imagemFundo:String
    var imagemPassaro:String
    @State private var selectedMaterial:Material = .regularMaterial
 
    
    var body: some View {
        
        ZStack{
            
            VStack(alignment: .leading){
                Text("nomePassaro")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding(.top)
                    .padding(.leading)
                
                HStack{
                Text("tipo")
                        .font(.subheadline).bold()
                        .foregroundColor(.white)
                        .padding(.horizontal, 16)
                        .padding(.vertical, 8)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color.white.opacity(0.25))
                        )
                        .frame(width: 100, height: 24)
                    Image(imagemPassaro)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 68, height: 68)
                        .padding([.bottom, .trailing], 4)
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
        .background(Color.cyan)
        .cornerRadius(12)
        .shadow(radius: 10)
        .padding(.bottom)
//        .padding([.top, .horizontal])
//        Spacer()
    }
}


struct CardAnimalView_Previews: PreviewProvider {
    static var previews: some View {
        CardAnimalView(imagemPassaro: "testePassaro1")
            .previewLayout(.sizeThatFits)
    }
}
