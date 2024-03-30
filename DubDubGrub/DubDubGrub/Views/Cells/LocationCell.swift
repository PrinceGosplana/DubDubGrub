//
//  LocationCell.swift
//  DubDubGrub
//
//  Created by Oleksandr Isaiev on 29.03.2024.
//

import SwiftUI

struct LocationCell: View {

    var location: DDGLocation

    var body: some View {
        HStack {
            Image(.defaultSquareAsset)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
                .clipShape(Circle())
                .padding(.vertical, 8)
            VStack(alignment: .leading) {
                Text(location.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .lineLimit(1)
                    .minimumScaleFactor(0.75)

                HStack {
                    UserAvatar(size: 35)
                    UserAvatar(size: 35)
                    UserAvatar(size: 35)
                    UserAvatar(size: 35)
                    UserAvatar(size: 35)
                }
            }
            .padding(.leading)
        }
    }
}

#Preview {
    LocationCell(location: DDGLocation(record: MockData.location))
}
