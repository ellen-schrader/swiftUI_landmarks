//
//  landmarksApp.swift
//  landmarks
//
//  Created by Ellen Schrader on 22/03/2025.
//

import SwiftUI

@main
struct landmarksApp: App {
    @State private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
