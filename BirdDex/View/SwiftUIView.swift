//
//  SwiftUIView.swift
//  BirdDex
//
//  Created by Cicero Nascimento on 12/05/22.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 200, height: 160)
                .foregroundColor(.cyan)
//            Circle()
            Image("pombo")
                .resizable()
                .scaledToFit()
                .frame(width: 68, height: 68)
                .padding([.bottom, .trailing], 4)
                .overlay(
                    Circle()
                        .scale(1.6, anchor: .leading)
                        .fill(Color.white.opacity(0.25))
                )
            
                .frame(width: 100, height: 100)
        }
        
        .overlay(alignment: .leading) {
            VStack(alignment: .leading) {
                Text("nomePassaro")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding(.top)
                    .padding(.leading)
//                    .foregroundColor(.white)
                
                Text("Alimento")
                    .font(.subheadline).bold()
                    .foregroundColor(.white)
                    .padding(.horizontal, 16)
                    .padding(.vertical, 8)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color.white.opacity(0.25))
                    )
                    .frame(width: 100, height: 24)
                Text("Habitat")
                    .font(.subheadline).bold()
                    .foregroundColor(.white)
                    .padding(.horizontal, 16)
                    .padding(.vertical, 8)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color.white.opacity(0.25))
                    )
//                    .frame(width: 100, height: 24)
//                RoundedRectangle(cornerRadius: 10)
//                    .fill(.green)
//                    .frame(width: 100, height: 20)
//                RoundedRectangle(cornerRadius: 10)
//                    .fill(.green)
//                    .frame(width: 100, height: 20)
            }
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
            .previewLayout(.sizeThatFits)
    }
}
