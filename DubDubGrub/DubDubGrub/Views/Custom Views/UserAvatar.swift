//
//  UserAvatar.swift
//  DubDubGrub
//
//  Created by Oleksandr Isaiev on 29.03.2024.
//

import SwiftUI

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

#Preview {
    UserAvatar(size: 65)
}
