//
//  CategoryHome.swift
//  landmarks
//
//  Created by Ellen Schrader on 29/03/2025.
//

import SwiftUI

struct CategoryHome: View {
    @Environment(ModelData.self) var modelData
    @State private var showingProfile = false
    var body: some View {
        NavigationSplitView{
            List{
                PageView(pages: modelData.features.map{FeatureCard(landmark: $0)})
                    .listRowInsets(EdgeInsets())
                ForEach(modelData.categories.keys.sorted(), id: \.self) { category in
                    CategoryRow(categoryName: category,
                                items: modelData.categories[category]!)
                }
                .listRowInsets(EdgeInsets())
            }
            .listStyle(.inset)
                .navigationTitle(Text("Featured"))
            
                .toolbar {
                    Button{
                        showingProfile.toggle()
                    } label :{
                        Label("User Profile", systemImage: "person.circle")
                    }
                }
                .sheet(isPresented: $showingProfile){
                    ProfileHost()
                        .environment(ModelData())
                }
        }detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    CategoryHome()
        .environment(ModelData())
}
