//
//  LocalizacaoFDView.swift
//  BirdDex
//
//  Created by Cicero Nascimento on 19/05/22.
//

import SwiftUI
import MapKit
import CoreLocation

struct LocalizacaoFDView: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: -3.7627579, longitude: -38.5692384), span: MKCoordinateSpan(latitudeDelta: 150, longitudeDelta: 150))
    
    @State private var showingAlert: Bool = false
    private var alertTitle: String = "Obrigado pelo seu interesse!"
    private var alertMessage: String = "Localizar pássaros pelo mapa mundo é uma feature que ainda não esta pronta. Nós avisaremos quando for terminada!"
    
    
    var body: some View {
        
        Button{
            self.showingAlert = true
        } label: {
                Map(coordinateRegion: $region)
                    .frame(width: 390, height: 750, alignment: .center)
                    .ignoresSafeArea()
                    .disabled(true)
        }.alert(Text(alertTitle), isPresented: $showingAlert, actions: {
            Button("Ok", role: .cancel) { }
        }, message: {
            Text(alertMessage)
            }
        )
    }
}

struct LocalizacaoFDView_Previews: PreviewProvider {
    static var previews: some View {
        LocalizacaoFDView()
    }
}

//
//@State private var showingAlert: Bool = false
//private var alertTitle: String = "Write short, descriptive, multiword alert titles"
//private var alertMessage: String = "Try to keep messages short enough to fit on one or two lines to prevent scrolling."
//
//var body: some View {
//    Button(action: {
//        self.showingAlert = true
//    }) {
//        Text("Show Alert")
//    }.alert(Text(alertTitle),
//        isPresented: $showingAlert,
//        actions: {
//            Button("OK", role: .cancel) { }
//        }, message: {
//            Text(alertMessage)
//        }
//    )
//}
