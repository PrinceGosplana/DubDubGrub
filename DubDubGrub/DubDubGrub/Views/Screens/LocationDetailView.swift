//
//  LocationDetailView.swift
//  DubDubGrub
//
//  Created by Oleksandr Isaiev on 28.03.2024.
//

import SwiftUI

struct LocationDetailView: View {

    let columns = [GridItem(.flexible()),
                   GridItem(.flexible()),
                   GridItem(.flexible())]

    var location: DDGLocation

    var body: some View {
        VStack(spacing: 16) {
            BannerImage(image: location.createBannerImage())

            HStack {
                AddressLabel(address: location.address)
                Spacer()
            }
            .padding(.horizontal)

            DescriptionLabel(text: location.description)

            ZStack {
                Capsule()
                    .frame(height: 80)
                    .foregroundStyle(Color(.secondarySystemBackground))

                HStack(spacing: 20) {
                    Button {

                    } label: {
                        LocationActionButton(color: .brandPrimary,
                                             imageName: "location.fill")
                    }

                    Link(destination: URL(string: location.websiteURL)!,
                         label: {

                        LocationActionButton(color: .brandPrimary,
                                             imageName: "network")
                    })

                    Button {

                    } label: {
                        LocationActionButton(color: .brandPrimary,
                                             imageName: "phone.fill")
                    }

                    Button {

                    } label: {
                        LocationActionButton(color: .brandPrimary,
                                             imageName: "person.fill.checkmark")
                    }
                }
            }
            .padding(.horizontal)

            Text("Who's Here?")
                .bold()
                .font(.title2)

            ScrollView {
                LazyVGrid(columns: columns, content: {
                    FirstNameAvatarView(firstName: "Sean")
                    FirstNameAvatarView(firstName: "Mariella")
                    FirstNameAvatarView(firstName: "Oriol")
                })
            }
            Spacer()
        }
        .navigationTitle(location.name)
        .navigationBarTitleDisplayMode(.inline)

    }
}

#Preview {
    NavigationStack {
        LocationDetailView(location: DDGLocation(record: MockData.location2))
    }
}

struct LocationActionButton: View {

    var color: Color
    var imageName: String

    var body: some View {
        ZStack {
            Circle()
                .foregroundStyle(color)
                .frame(width: 60, height: 60)
            Image(systemName: imageName)
                .resizable()
                .scaledToFit()
                .foregroundStyle(.white)
                .frame(width: 22, height: 22)
        }
    }
}

struct FirstNameAvatarView: View {

    var firstName: String

    var body: some View {
        VStack {
            UserAvatar(size: 64)
            Text(firstName)
                .bold()
                .lineLimit(1)
                .minimumScaleFactor(0.75)
        }
    }
}

struct BannerImage: View {

    var image: UIImage

    var body: some View {
        Image(uiImage: image)
            .resizable()
            .scaledToFill()
            .frame(height: 120)
    }
}

struct AddressLabel: View {

    var address: String

    var body: some View {
        Label(address, systemImage: "mappin.and.ellipse")
            .font(.caption)
            .foregroundStyle(.secondary)
    }
}

struct DescriptionLabel: View {

    var text: String

    var body: some View {
        Text(text)
            .lineLimit(3)
            .minimumScaleFactor(0.75)
            .frame(height: 70)
            .padding(.horizontal)
    }
}
