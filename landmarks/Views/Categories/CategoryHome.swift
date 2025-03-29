//
//  CategoryHome.swift
//  landmarks
//
//  Created by Ellen Schrader on 29/03/2025.
//

import SwiftUI

struct CategoryHome: View {
    @Environment(ModelData.self) var modelData
    var body: some View {
        NavigationSplitView{
            List{
                modelData.features[0].image
                    .resizable()
                    .scaledToFill()
                    .frame(height: 200)
                    .clipped()
                    .listRowInsets(EdgeInsets())
                ForEach(modelData.categories.keys.sorted(), id: \.self) { category in
                    CategoryRow(categoryName: category,
                                items: modelData.categories[category]!)
                }
                .listRowInsets(EdgeInsets())
            }
                .navigationTitle(Text("Featured"))
        }detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    CategoryHome()
        .environment(ModelData())
}
