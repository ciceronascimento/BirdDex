//
//  LocalizacaoView.swift
//  BirdDex
//
//  Created by Cicero Nascimento on 13/05/22.
//

import SwiftUI
import MapKit
import CoreLocation

struct LocalizacaoView: View {
    
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: -3.7627579, longitude: -38.5692384), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
    
    var body: some View {
        NavigationView{
            VStack(alignment: .leading){
                
//                List{
                Section(header: Text("Arraste o mapa")){
                    Map(coordinateRegion: $region)
                        .frame(width: 360, height: 500)
                        .overlay(
                            VStack(alignment: .center){
                                Circle()
                                    .scale(0.7, anchor: .center)
                                .foregroundColor(.blue)
                                .opacity(0.2)
                            }
                        )
                }
                .cornerRadius(20)
                .headerProminence(.increased)

            }
            .navigationTitle("Localização")
            .navigationBarTitleDisplayMode(.automatic)
        }
    }
}

struct LocalizacaoView_Previews: PreviewProvider {
    static var previews: some View {
        LocalizacaoView()
    }
}
