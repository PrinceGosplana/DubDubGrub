//
//  DubDubGrubApp.swift
//  DubDubGrub
//
//  Created by Oleksandr Isaiev on 27.03.2024.
//

import SwiftUI

@main
struct DubDubGrubApp: App {

    let locationManager = LocationManager()

    var body: some Scene {
        WindowGroup {
            AppTabView()
                .environmentObject(locationManager)
        }
    }
}
