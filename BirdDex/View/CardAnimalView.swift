//
//  CardAnimalView.swift
//  BirdDex
//
//  Created by Cicero Nascimento on 11/05/22.
//

import SwiftUI



struct CardAnimalView: View {
    
    
    var imagemFundo:String
  

    
    var body: some View {
        
        ZStack{
            Image(imagemFundo)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
        }
        .cornerRadius(20)
        .padding([.top, .horizontal])
        Spacer()
    }
}


struct CardAnimalView_Previews: PreviewProvider {
    static var previews: some View {
        CardAnimalView(imagemFundo: "testeBackground")
    }
}
