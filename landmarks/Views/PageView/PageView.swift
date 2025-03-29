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
        ZStack(alignment: .bottomTrailing){
            PageViewController(pages: pages, currentPage: $currentPage)
                .aspectRatio(3/2, contentMode: .fit)
            PageControl(numberOfPages: pages.count, currentPage: $currentPage)
                .frame(width: CGFloat(pages.count * 18))
                .padding(.trailing)
        }
        
    }
}

#Preview {
    PageView(pages: ModelData().features.map{FeatureCard(landmark: $0)})
}
