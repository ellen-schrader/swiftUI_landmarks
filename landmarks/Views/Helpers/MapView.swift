//
//  MapView.swift
//  landmarks
//
//  Created by Ellen Schrader on 22/03/2025.
//

import SwiftUI
import MapKit

struct MapView: View {
    var coordinate : CLLocationCoordinate2D
    
    private var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
    var body: some View {
        Map(position : .constant(.region(region)))
    }
}

#Preview {
    MapView(coordinate: ModelData().landmarks[0].locationCoordinates)
}
