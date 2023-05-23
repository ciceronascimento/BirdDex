//
//  IdentifyView.swift
//  BirdDex
//
//  Created by Cicero Nascimento on 23/05/23.
//

import SwiftUI

struct IdentifyView: View {

    let identify = "Identificar"
    let identifyNew = "Identificar novo"
    let observed = "Observados"

    var body: some View {
        NavigationView {
            VStack(alignment: .center) {
                Text(identify)
                    .font(.title)
                    .bold()
                    .padding(.horizontal, 15)
                VStack(alignment: .center) {
                    Button(action: {print(
                        "teste")}, label: {
                            IdentifyButton()
                                .padding()
                                .background(Color.cyan)
                                .clipShape(Capsule())
                        })
                }
                Text(observed)
                    .font(.title)
                    .bold()
                    .padding(.horizontal, 15)
                ScrollView(.vertical) {

                }
            }.navigationTitle(identify)
        }
    }
}

struct IdentifyView_Previews: PreviewProvider {
    static var previews: some View {
        IdentifyView()
    }
}
