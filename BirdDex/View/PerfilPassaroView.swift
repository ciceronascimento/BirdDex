//
//  PerfilPassaroView.swift
//  BirdDex
//
//  Created by Cicero Nascimento on 12/05/22.
//

import SwiftUI
import MapKit

struct PerfilPassaroView: View {
    
//    @State var latitudePassaro = 35.652832
//    @State var longitudePassaro = 139.839478
    
    var passaro:Passaro
    
    var body: some View {
        
        NavigationView{
            
            ZStack(){
                
                VStack(alignment: .center){
                    Spacer()
                    RoundedRectangle(cornerRadius: 40)
    //                    .size(width: 360 , height: 1000)
                        .foregroundColor(.white)
                        .scaledToFit()
                        .padding()
                        .frame(height: 530, alignment: .center)
                    
                }
            }
            .background(passaro.habitat.color)
            
//            .background(
//                Image(passaro.background.rawValue)
////                .resizable()
////                .scaledToFit()
//            )
            .overlay{
                VStack{
                    Image(passaro.nomeImagem)
                        .resizable()
                        .scaledToFit()
                        .frame(alignment: .center)
                        .padding(.bottom, 427)
                }
                
                VStack(alignment: .center){
                    Text(passaro.nome)
                        .font(.title)
                        .bold()
                        .padding(.bottom,40)
                        .foregroundColor(.black)
                    
                    VStack(alignment: .leading){
                        Section{
                            HStack{
                                Text("Tipo:")
                                    .font(.title2)
                                    .foregroundColor(.black)
                                Text(passaro.tipo)
                                    .font(.subheadline).bold()
                                    .foregroundColor(passaro.habitat.color)
                                    .padding(.horizontal, 16)
                                    .padding(.vertical, 8)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 20)
                                            .fill(passaro.habitat.color.opacity(0.25))
                                    )
                                    .frame(width: 100, height: 24)
                                
                            }
    //                        Divider()
                            HStack{
                                Text("Habitat: \(passaro.habitat.rawValue)")
                                    .font(.title2)
                                    .foregroundColor(.black)
//
//                                Text("Categoria aleatoria")
//                                    .font(.title2)
//                                    .foregroundColor(.black)
                                
                            }
                            .padding(.bottom,1)
    //                        Divider()
                            HStack{
                                Text("Alimentação:")
                                    .font(.title2)
                                    .foregroundColor(.black)
                                
                                Text("Onivoro")
                                    .font(.title2)
                                    .foregroundColor(.black)
                            }
                        }
                        .padding(.horizontal, -50)
                    }

                }
                VStack{
                    NavigationLink(destination:{
                        LocalizacaoView(passaro: passaro, coordinate: CLLocationCoordinate2D(latitude: passaro.latitudePassaro, longitude: passaro.longigudePassaro))
                    }) {
                        Text("Localizar")
                            .foregroundColor(.white)
                            .buttonStyle(.borderedProminent)
                            .controlSize(.regular)
                    }
                    .padding()
                    
                    .background(passaro.habitat.color)
                    .clipShape(Capsule())
                }
                .padding(.top, 300)
            }
        }
        .navigationBarTitle("", displayMode: .inline)
        
//        .navigationBarHidden(true)
    }
}

struct PerfilPassaroView_Previews: PreviewProvider {
    static var previews: some View {
        
        let testService = PassarosService().passaros[1]
        PerfilPassaroView(passaro: testService)
            .previewInterfaceOrientation(.portrait)
    }
}
