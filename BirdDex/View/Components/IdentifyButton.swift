//
//  IdentifyButton.swift
//  BirdDex
//
//  Created by Cicero Nascimento on 23/05/23.
//

import SwiftUI

struct IdentifyButton: View {
    var body: some View {
        Button(action: { print(
            "teste")},
               label: {
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.white)
                Text("Identificar")
                    .foregroundColor(.white)
            }
            .controlSize(.regular)
            .padding()
            .background(Color.cyan)
            .clipShape(Capsule())
        })
    }
}

struct IdentifyButton_Previews: PreviewProvider {
    static var previews: some View {
        IdentifyButton()
    }
}
