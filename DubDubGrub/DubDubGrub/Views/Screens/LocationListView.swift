//
//  LocationListView.swift
//  DubDubGrub
//
//  Created by Oleksandr Isaiev on 28.03.2024.
//

import SwiftUI

struct LocationListView: View {
    var body: some View {
        NavigationStack {
                    List {
                        ForEach(0..<10) { item in
                            NavigationLink(destination: LocationDetailView()) {
                                LocationCell()
                            }
                        }
                    }
                    .navigationTitle("Grub Spots")
                }
    }
}

#Preview {
    LocationListView()
}
