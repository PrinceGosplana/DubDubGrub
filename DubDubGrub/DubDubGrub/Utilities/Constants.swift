//
//  Constants.swift
//  DubDubGrub
//
//  Created by Oleksandr Isaiev on 02.04.2024.
//

import UIKit

enum PlaceholderImage {
    static let avatar = UIImage(resource: .defaultAvatar)
    static let square = UIImage(resource: .defaultSquareAsset)
    static let banner = UIImage(resource: .defaultBannerAsset)
}

enum ImageDimension {
    case square, banner

    static func getPlaceholder(for dimension: ImageDimension) -> UIImage {
        switch dimension {
        case .square:
            PlaceholderImage.square
        case .banner:
            PlaceholderImage.banner
        }
    }
}
