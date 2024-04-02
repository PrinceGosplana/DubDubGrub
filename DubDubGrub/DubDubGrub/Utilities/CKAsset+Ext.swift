//
//  CKAsset+Ext.swift
//  DubDubGrub
//
//  Created by Oleksandr Isaiev on 02.04.2024.
//

import CloudKit
import UIKit

extension CKAsset {
    func convertToUIImage(in dimension: ImageDimension) -> UIImage {
        let placeholder = ImageDimension.getPlaceholder(for: dimension)

        guard let fileURL else { return placeholder }

        do {
            let data = try Data(contentsOf: fileURL)
            return UIImage(data: data) ?? placeholder
        } catch {
            return placeholder
        }
    }
}
