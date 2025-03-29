//
//  ContentView.swift
//  landmarks
//
//  Created by Ellen Schrader on 22/03/2025.
//  Following: https://developer.apple.com/tutorials/swiftui/

import SwiftUI

struct ContentView: View {
    @State private var selectedTab: Tab = .featured
    enum Tab {
        case featured
        case list
        case profile
    }
    var body: some View {
        TabView(selection: $selectedTab){
            CategoryHome()
                .tag(Tab.featured)
                .tabItem{
                    Label("Featured", systemImage: "star.fill")
                }
            LandmarkList()
                .tag(Tab.list)
                .tabItem{
                    Label("List", systemImage: "list.bullet")
                }
//            ProfileSummary()
//                .tag(Tab.profile)
//                .tabItem{
//                    Label("Profile", systemImage: "person.circle")
//                }
        }
        
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
