//
//  BirdCardView.swift
//  BirdDex
//
//  Created by Cicero Nascimento on 26/05/23.
//

import SwiftUI

struct BirdCardView: View {

    // Strings
    let closeWindow = NSLocalizedString("close_window", comment: "")

    var category: Category

    @State private var selectedMaterial: Material = .regularMaterial
    @State var mostrarSheet = false
    let categoryTitle: String = "Category title"

    @Environment(\.dismiss) private var dismiss
    @Environment(\.dismissSearch) private var dismissSearch

    var body: some View {
        NavigationLink {
            CategoryView()
                .navigationTitle(categoryTitle)

        }

    label: {
        ZStack {
            VStack(alignment: .leading) {
                Text(category.name)
                    .lineLimit(1)
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding(.top)
                    .padding(.leading)

                HStack {
                    Text(category.habitat.rawValue)
                        .font(.subheadline).bold()
                        .foregroundColor(.white)
                        .padding(.horizontal, 11)
                        .padding(.vertical, 8)
                        .scaledToFit()
                        .lineLimit(1)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color.white.opacity(0.25))
                        )
                        .fixedSize(horizontal: false, vertical: true)
                        .frame(maxWidth: 100, maxHeight: 24)
                    Spacer()
                    Image(category.imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 68, height: 68)
                        .padding([.bottom, .trailing], 4)
                        .overlay(
                            Circle()
                                .scale(1.3, anchor: .center)
                                .fill(Color.white.opacity(0.25))
                        )
                }
                .padding(.top)
            }
        }
        .sheet(isPresented: $mostrarSheet) {

        }
        .frame(width: 187, height: 135)
        .background(category.habitat.color)
        .cornerRadius(12)
        .shadow(radius: 10)
        .padding(.bottom)
    }

    }
}

//struct BirdCardView_Previews: PreviewProvider {
//    static var previews: some View {
//        let testService = CategoryService().bird[1]
//        BirdCardView(category: testService)
//            .previewLayout(.sizeThatFits)
//    }
//}
