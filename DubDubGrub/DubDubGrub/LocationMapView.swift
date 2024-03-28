//
//  LocationMapView.swift
//  DubDubGrub
//
//  Created by Oleksandr Isaiev on 28.03.2024.
//

import MapKit
import SwiftUI


struct LocationMapView: View {

    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 37.331516, longitude: -121.891054), span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
    var body: some View {
        ZStack {
            Map(initialPosition: .region(region))

            VStack {
                Image(.ddgMapLogo)
                    .resizable()
                    .scaledToFit()
                .frame(height: 70)
                .shadow(radius: 10)
                Spacer()
            }
        }
    }
}

#Preview {
    LocationMapView()
}
