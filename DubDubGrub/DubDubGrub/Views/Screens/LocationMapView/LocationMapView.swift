//
//  LocationMapView.swift
//  DubDubGrub
//
//  Created by Oleksandr Isaiev on 28.03.2024.
//

import MapKit
import SwiftUI


struct LocationMapView: View {
    
    @EnvironmentObject private var locationManager: LocationManager
    @StateObject private var viewModel = LocationMapViewModel()

    var body: some View {
        ZStack {

            Map(initialPosition: .region(viewModel.region)) {
                ForEach(locationManager.locations) { location in
                    Marker(location.name, coordinate: location.location.coordinate)
                        .tint(.brandPrimary)
                }
            }
//            .mapControls {
//                MapUserLocationButton()
//            }
            .ignoresSafeArea()

            VStack {
                LogoImage().shadow(radius: 10)
                Spacer()
            }
        }
        .onAppear {
            if locationManager.locations.isEmpty {
                viewModel.getLocations(for: locationManager)
            }
        }
    }
}

#Preview {
    LocationMapView()
}

struct LogoImage: View {
    var body: some View {
        Image(.ddgMapLogo)
            .resizable()
            .scaledToFit()
            .frame(height: 70)
    }
}
