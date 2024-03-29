//
//  AppTabView.swift
//  DubDubGrub
//
//  Created by Oleksandr Isaiev on 28.03.2024.
//

import SwiftUI

struct AppTabView: View {
    var body: some View {
        TabView {
            LocationMapView()
                .tabItem {
                    Label("Map", systemImage: "map")
                }
            LocationListView()
                .tabItem {
                    Label("Locations", systemImage: "building")
                }
            NavigationStack {
                ProfileView()
            }
                .tabItem {
                    Label("Profile", systemImage: "person")
                }
        }
    }
}

#Preview {
    AppTabView()
}
