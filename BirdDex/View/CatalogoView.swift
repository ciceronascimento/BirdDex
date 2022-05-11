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
    
    var body: some View {
        
        NavigationView{
            HStack(alignment: alignment,
                spacing: stackSpacing
            ) {
            
//                Spacer()
                CardAnimalView(imagemFundo: "testeBackground")
                
                CardAnimalView(imagemFundo: "testeBackground")
//                Spacer()
                
                
            }
            .navigationTitle("Descobrir")
            .navigationBarTitleDisplayMode(.automatic)
//            .background(Color(.cyan))
            
            
        }
        Spacer()
    }
}



// {
//    Rectangle()
//        .strokeBorder(Color.accentColor, lineWidth: 4.0)
//        .frame(width: 40, height: 240)
//    Rectangle()
//        .strokeBorder(Color.accentColor, lineWidth: 4.0)
//        .frame(width: 40, height: 80)
//    Rectangle()
//        .strokeBorder(Color.accentColor, lineWidth: 4.0)
//        .frame(width: 40, height: 160)
//}

struct CatalogoView_Previews: PreviewProvider {
    static var previews: some View {
        CatalogoView()
    }
}
