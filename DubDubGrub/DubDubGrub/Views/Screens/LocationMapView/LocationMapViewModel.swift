//
//  LocationMapViewModel.swift
//  DubDubGrub
//
//  Created by Oleksandr Isaiev on 30.03.2024.
//

import MapKit
import SwiftUI

final class LocationMapViewModel: ObservableObject {

    @Published var region = MKCoordinateRegion(center:
                                                        CLLocationCoordinate2D(latitude: 37.331516,
                                                                               longitude: -121.891054),
                                                       span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))

    @Published var locations: [DDGLocation] = []

    func getLocations() {
        locations = [DDGLocation(record: MockData.location),
                     DDGLocation(record: MockData.location2),
                     DDGLocation(record: MockData.location3)]
    }
}
