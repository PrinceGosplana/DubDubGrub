//
//  ProfileView.swift
//  DubDubGrub
//
//  Created by Oleksandr Isaiev on 28.03.2024.
//

import SwiftUI

struct ProfileView: View {

    @State private var firstName = ""
    @State private var lastName = ""
    @State private var companyName = ""
    @State private var bio = ""

    var body: some View {
        VStack {
            ZStack {
                NameBackground()

                HStack(spacing: 16) {
                    ZStack {
                        UserAvatar(size: 84)
                        EditImage()
                    }
                    .padding(.leading, 12)

                    VStack(spacing: 1) {
                        TextField("First Name", text: $firstName)
                            .modifier(ProfileNameText())

                        TextField("Last Name", text: $lastName)
                            .modifier(ProfileNameText())

                        TextField("Company Name", text: $companyName)

                    }
                    .padding(.trailing, 16)
                }
                .padding()
            }

            VStack(alignment: .leading, spacing: 8) {
                CharactersRemain(currentCount: bio.count)

                TextEditor(text: $bio)
                    .frame(height: 100)
                    .overlay(RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.secondary, lineWidth: 1))
            }
            .padding(.horizontal, 20)

            Spacer()

            Button {

            } label: {
                DDGButton(title: "Create Profile")
            }
        }
        .navigationTitle("Profile")
    }
}

#Preview {
    NavigationStack {
        ProfileView()
    }
}

struct NameBackground: View {
    var body: some View {
        Color(.systemBackground)
            .frame(height: 130)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding(.horizontal)
    }
}

struct EditImage: View {
    var body: some View {
        Image(systemName: "square.and.pencil")
            .resizable()
            .scaledToFit()
            .frame(width: 14, height: 14)
            .foregroundStyle(.white)
            .offset(y: 30)
    }
}

struct CharactersRemain: View {

    var currentCount: Int

    var body: some View {
        Text("Bio: ")
            .font(.callout)
            .foregroundStyle(.secondary)
        +
        Text("\(100 - currentCount)")
            .bold()
            .font(.callout)
            .foregroundStyle(currentCount <= 100 ? .brandPrimary : Color(.systemPink))
        +
        Text(" Characters Remain")
            .font(.callout)
            .foregroundStyle(.secondary)
    }
}
