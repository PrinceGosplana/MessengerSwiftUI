//
//  CircularProfileImageView.swift
//  MessengerSwiftUI
//
//  Created by Oleksandr Isaiev on 10.06.2024.
//

import SwiftUI

enum ProfileImageSize {
    case xxSmall
    case xSmall
    case small
    case medium
    case large
    case xxLarge

    var dimensions: CGFloat {
        switch self {
        case .xxSmall: 28
        case .xSmall: 32
        case .small: 40
        case .medium: 64
        case .large: 64
        case .xxLarge: 80
        }
    }
}

struct CircularProfileImageView: View {

    let profileImageUrl: String?
    let size: ProfileImageSize

    var body: some View {
        if let imageUrl = profileImageUrl {
            Image(imageUrl)
                .resizable()
                .scaledToFill()
                .frame(width: size.dimensions, height: size.dimensions)
                .clipShape(Circle())
        } else {
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: size.dimensions, height: size.dimensions)
                .clipShape(Circle())
                .foregroundStyle(Color(.systemGray4))
        }
    }
}

#Preview {
    CircularProfileImageView(profileImageUrl: User.mockUser.profileImageUrl, size: .xxLarge)
}
