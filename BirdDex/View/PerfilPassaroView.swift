//
//  PerfilPassaroView.swift
//  BirdDex
//
//  Created by Cicero Nascimento on 12/05/22.
//

import SwiftUI


struct PerfilPassaroView: View {
    
    var passaro:Passaro
    
    var body: some View {
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
                    .padding(.bottom)
                    .foregroundColor(.black)
                
                VStack(alignment: .leading){
                    Section{
                        HStack{
                            Text("Tipo: ")
                                .font(.title2)
                                .foregroundColor(.black)
                            Text("Oceano")
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
                            Text("Categoria: ")
                                .font(.title2)
                                .foregroundColor(.black)
                            
                            Text("Categoria aleatoria")
                                .font(.title2)
                                .foregroundColor(.black)
                            
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
                Button(action: {
                    
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
}

struct PerfilPassaroView_Previews: PreviewProvider {
    static var previews: some View {
        
        let testService = PassarosService().passaros[1]
        
        Group {
            PerfilPassaroView(passaro: testService)
                .previewLayout(.fixed(width: 430, height: 730))
        }
    }
}
