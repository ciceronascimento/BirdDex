//
//  FavoritosView.swift
//  BirdDex
//
//  Created by Cicero Nascimento on 11/05/22.
//

import SwiftUI

struct FavoritosView: View {
    var body: some View {
        
//        Text("Favoritos")
        NavigationView{
            
            VStack{
                Button("Teste"){
                    NavigationLink(destination: PerfilPassaroView()){
                        Text("oi")
                    }
                }
            }
        }
    }
}

struct FavoritosView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritosView()
    }
}
