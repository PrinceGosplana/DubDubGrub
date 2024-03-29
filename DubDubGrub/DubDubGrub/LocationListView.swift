//
//  LocationListView.swift
//  DubDubGrub
//
//  Created by Oleksandr Isaiev on 28.03.2024.
//

import SwiftUI

struct LocationListView: View {
    var body: some View {
        NavigationStack {
                    List {
                        ForEach(0..<10) { item in
                            NavigationLink(destination: LocationDetailView()) {
                                LocationCell()
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

struct UserAvatar: View {

    var size: CGFloat

    var body: some View {
        Image(.defaultAvatar)
            .resizable()
            .scaledToFit()
            .frame(width: size, height: size)
            .clipShape(Circle())
    }
}

struct LocationCell: View {
    var body: some View {
        HStack {
            Image(.defaultSquareAsset)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
                .clipShape(Circle())
                .padding(.vertical, 8)
            VStack(alignment: .leading) {
                Text("Test Location Name")
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
