//
//  LandmarkRow.swift
//  landmarks
//
//  Created by Ellen Schrader on 23/03/2025.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
                .cornerRadius(5)
            Text(landmark.name)
            
            Spacer()
            
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundStyle(.yellow)
            }
        }
        
    }
}

#Preview("Turtle Rock") {
    LandmarkRow(landmark: ModelData().landmarks[0])
}

#Preview("Silver Salmon Creek"){
    LandmarkRow(landmark: ModelData().landmarks[1])
}

#Preview("Group"){
    let landmarks = ModelData().landmarks
    return Group{
        LandmarkRow(landmark: landmarks[0])
        LandmarkRow(landmark: landmarks[1])
    }
}
