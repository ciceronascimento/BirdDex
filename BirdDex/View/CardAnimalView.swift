//
//  CardAnimalView.swift
//  BirdDex
//
//  Created by Cicero Nascimento on 11/05/22.
//

import SwiftUI



struct CardAnimalView: View {
    
    
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
//    @Binding var clique: Passaro
    
//    var clique:Passaro

    
    var body: some View {
        
        Button {
            self.showingSheet = true
//            self.clique = passaro
//            @Binding var clique = passaro
        }
    

    
        label: {
            ZStack{
                
                VStack(alignment: .leading){
                    Text(passaro.nome)
                        .lineLimit(1)
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding(.top)
                        .padding(.leading)
                        
                    
                    HStack(){
                        Text(passaro.tipo)
                            .font(.subheadline).bold()
                            .foregroundColor(.white)
                            .padding(.horizontal, 16)
                            .padding(.vertical, 8)
                            .lineLimit(nil)
                            .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(Color.white.opacity(0.25))
                            )
                            .fixedSize(horizontal: false, vertical: true)
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

            }
//            .fullScreenCover(isPresented: $showingSheet){
//                PerfilPassaroView(passaro: passaro)
            .fullScreenCover(isPresented: $showingSheet) {
                NavigationView {
                    PerfilPassaroView(passaro: passaro)
//                        .edgesIgnoringSafeArea(.all)
//                        .transition(.move(edge: .bottom))
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
//            .transition(.scale)
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


//        .fullScreenCover(isPresented: $showingSheet) {
//            NavigationView {
//                PerfilPassaroView(passaro: passaro)
//                    .toolbar {
//                        ToolbarItem(placement: .primaryAction) {
//                            Button(action: {
//                                self.showingSheet = false
//                            }) {
//                                Label("Fechar", systemImage: "x.circle.fill")
//                                    .foregroundColor(.white)
//                            }
//                        }
//                    }
//            }
//        }


struct CardAnimalView_Previews: PreviewProvider {
    static var previews: some View {
        let testService = PassarosService().passaros[1]
        CardAnimalView(passaro: testService)
            .previewLayout(.sizeThatFits)
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
