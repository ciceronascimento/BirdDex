//
//  CategoryView.swift
//  BirdDex
//
//  Created by Cicero Nascimento on 25/05/23.
//

import SwiftUI

struct CategoryView: View {
    let categoryTitle: String = "Category title"

    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(0..<10) { _ in
                        CellCategoryView()
//                            .listRowBackground(Color.cyan)
                    }
                }.listStyle(.automatic)
            }.navigationTitle(categoryTitle)
        }
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView()
    }
}
