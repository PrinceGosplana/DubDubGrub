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
                                        .truncationMode(.middle)

                                    HStack {
                                        AvatarView(size: 35)
                                        AvatarView(size: 35)
                                        AvatarView(size: 35)
                                        AvatarView(size: 35)
                                        AvatarView(size: 35)
                                    }
                                }
                                .padding(.leading)
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

struct AvatarView: View {

    var size: CGFloat

    var body: some View {
        Image(.defaultAvatar)
            .resizable()
            .scaledToFit()
            .frame(width: size, height: size)
            .clipShape(Circle())
    }
}