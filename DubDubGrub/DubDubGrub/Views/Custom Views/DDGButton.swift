//
//  DDGButton.swift
//  DubDubGrub
//
//  Created by Oleksandr Isaiev on 29.03.2024.
//

import SwiftUI

struct DDGButton: View {

    var title: String

    var body: some View {
        Text(title)
            .bold()
            .frame(width: 280, height: 44)
            .background(Color.brandPrimary)
            .foregroundStyle(.white)
            .clipShape(RoundedRectangle(cornerRadius: 8))
    }
}

#Preview {
    DDGButton(title: "Title")
}
