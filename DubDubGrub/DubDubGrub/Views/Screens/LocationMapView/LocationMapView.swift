//
//  LocationMapView.swift
//  DubDubGrub
//
//  Created by Oleksandr Isaiev on 28.03.2024.
//

import MapKit
import SwiftUI


struct LocationMapView: View {
    
    @StateObject private var viewModel = LocationMapViewModel()

    var body: some View {
        ZStack {
            Map(initialPosition: .region(viewModel.region)).ignoresSafeArea()

            VStack {
                LogoImage().shadow(radius: 10)
                Spacer()
            }
        }
        .onAppear {
            viewModel.getLocations()
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
