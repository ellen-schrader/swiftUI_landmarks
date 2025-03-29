//
//  PageView.swift
//  landmarks
//
//  Created by Ellen Schrader on 29/03/2025.
//

import SwiftUI


struct PageView<Page:View>: View {
    var pages: [Page]
    @State private var currentPage = 0
    var body: some View {
        VStack(alignment: .leading){
            PageViewController(pages: pages, currentPage: $currentPage)
                .aspectRatio(3/2, contentMode: .fit)
            HStack(){
                Button("Previous"){
                    currentPage = (currentPage > 0) ? (currentPage - 1) : (pages.count - 1)
                }
                Spacer()
                Button("Next"){
                    currentPage = (currentPage < (pages.count - 1)) ? (currentPage + 1) : 0
                }
            }
            .padding()

        }
        
    }
}

#Preview {
    PageView(pages: ModelData().features.map{FeatureCard(landmark: $0)})
}
