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
//
//    @State var latitudePadrao = -3.7627579
//    @State var longeitudePadrao = -38.5692384
//    @State var latitudeDeltaPadrao = 150
//    @State var longitudeDeltaPadrao = 150
//
    var coordinate: CLLocationCoordinate2D
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: -3.7627579, longitude: -38.5692384), span: MKCoordinateSpan(latitudeDelta: 150, longitudeDelta: 150))
    
    var body: some View {
        NavigationView{
            VStack(alignment: .leading){
                
//                List{
                Section(header: Text("Arraste o mapa")){
                    Map(coordinateRegion: $region)
                        .frame(width: 360, height: 500)
                        .onAppear{
                            setRegion(coordinate)
                        }
//                        .overlay(
//                            VStack(alignment: .center){
//                                Circle()
//                                    .scale(0.7, anchor: .center)
//                                .foregroundColor(.blue)
//                                .opacity(0.2)
//                            }
//                        )
                }
                .cornerRadius(20)
                .headerProminence(.increased)

            }
            .navigationTitle("Localização")
            .navigationBarTitleDisplayMode(.automatic)
        }
    }
    private func setRegion(_ coordinate: CLLocationCoordinate2D) {
        region = MKCoordinateRegion(
            center: coordinate, span: MKCoordinateSpan(latitudeDelta: 10.8, longitudeDelta: 10.8))
    }
}

struct LocalizacaoView_Previews: PreviewProvider {
    static var previews: some View {
        LocalizacaoView(coordinate: CLLocationCoordinate2D(latitude: -3.7627579, longitude: -38.5692384))
    }
}
