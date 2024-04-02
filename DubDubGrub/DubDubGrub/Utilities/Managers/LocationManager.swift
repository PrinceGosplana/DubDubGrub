//
//  LocationManager.swift
//  DubDubGrub
//
//  Created by Oleksandr Isaiev on 01.04.2024.
//

import Foundation

final class LocationManager: ObservableObject {
    @Published var locations: [DDGLocation] = []
}
