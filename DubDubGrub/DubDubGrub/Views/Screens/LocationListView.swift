//
//  LocationListView.swift
//  DubDubGrub
//
//  Created by Oleksandr Isaiev on 28.03.2024.
//

import SwiftUI

struct LocationListView: View {

    @State private var locations: [DDGLocation] = [DDGLocation(record: MockData.location)]

    var body: some View {
        NavigationStack {
                    List {
                        ForEach(locations, id: \.ckRecordID ) { location in
                            NavigationLink(destination: LocationDetailView(location: DDGLocation(record: MockData.location))) {
                                LocationCell(location: location)
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
