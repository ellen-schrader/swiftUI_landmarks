//
//  CategoryItem.swift
//  landmarks
//
//  Created by Ellen Schrader on 29/03/2025.
//

import SwiftUI

struct CategoryItem: View {
    var landmark: Landmark
    
    var body: some View {
        VStack(alignment: .leading){
            landmark.image
                .renderingMode(.original)
                .resizable()
                .frame(width: 155, height: 155)
                .cornerRadius(10)
            
            Text(landmark.name)
                .font(.caption)
                .foregroundStyle(.primary)
        }
        .padding(.leading, 15)
    }
}

#Preview {
    let landmarks = ModelData().landmarks
    CategoryItem(landmark: landmarks[0])
}
