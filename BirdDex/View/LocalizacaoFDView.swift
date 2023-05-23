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
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: -3.7627579,
                                                                                  longitude: -38.5692384),
                                                   span: MKCoordinateSpan(latitudeDelta: 150,
                                                                          longitudeDelta: 150))
    @State private var showingAlert: Bool = false
    private var alertTitle: String = "Obrigado pelo seu interesse!"
    var body: some View {

        Button {
            self.showingAlert = true
        } label: {
                Map(coordinateRegion: $region)
                    .frame(width: 390, height: 750, alignment: .center)
                    .ignoresSafeArea()
                    .disabled(true)
        }.alert(Text(alertTitle), isPresented: $showingAlert, actions: {
            Button("Ok", role: .cancel) { }
        }, message: {
            Text(alertTitle)
            }
        )
    }
}

struct LocalizacaoFDView_Previews: PreviewProvider {
    static var previews: some View {
        LocalizacaoFDView()
    }
}
