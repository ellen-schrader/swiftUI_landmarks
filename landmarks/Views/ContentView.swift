//
//  ContentView.swift
//  landmarks
//
//  Created by Ellen Schrader on 22/03/2025.
//  Following: https://developer.apple.com/tutorials/swiftui/

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
