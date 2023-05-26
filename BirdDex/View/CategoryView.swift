//
//  CategoryView.swift
//  BirdDex
//
//  Created by Cicero Nascimento on 25/05/23.
//

import SwiftUI

struct CategoryView: View {
    var body: some View {
        VStack {
            List {
                ForEach(0..<10) { _ in
                    CellCategoryView()
                }
            }.listStyle(.automatic)
        }
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView()
    }
}
