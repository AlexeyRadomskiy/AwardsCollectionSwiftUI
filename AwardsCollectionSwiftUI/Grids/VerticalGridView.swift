//
//  VerticalGridView.swift
//  AwardsCollectionSwiftUI
//
//  Created by Alexey on 15.04.2022.
//

import SwiftUI

struct VerticalGridView: View {
    let data = (1...100).map { "Item: \($0)" }
    let columns = [
        GridItem(.fixed(70)),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(data, id: \.self) { item in
                    Text(item)
                }
            }
        }
    }
}

struct VerticalGridView_Previews: PreviewProvider {
    static var previews: some View {
        VerticalGridView()
    }
}

