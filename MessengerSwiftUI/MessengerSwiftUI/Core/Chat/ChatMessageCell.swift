//
//  ChatMessageCell.swift
//  MessengerSwiftUI
//
//  Created by Oleksandr Isaiev on 10.06.2024.
//

import SwiftUI

struct ChatMessageCell: View {

    let isFromCurrentUser: Bool

    var body: some View {
        let screenWidth = UIScreen.main.bounds.width

            HStack {
                if isFromCurrentUser {
                    Spacer()

                    Text("This is a test message for now")
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemBlue))
                        .foregroundStyle(.white)
                        .clipShape(ChatBubble(isFromCurrentUser: isFromCurrentUser))
                        .frame(maxWidth: screenWidth / 1.5, alignment: .trailing)
                } else {
                    HStack(alignment: .bottom, spacing: 8) {
                        CircularProfileImageView(profileImageUrl: User.mockUser.profileImageUrl, size: .xSmall)

                        Text("This is a test message for now")
                            .font(.subheadline)
                            .padding(12)
                            .background(Color(.systemGray6))
                            .foregroundStyle(.black)
                            .clipShape(ChatBubble(isFromCurrentUser: isFromCurrentUser))
                            .frame(maxWidth: screenWidth / 1.75, alignment: .leading)

                        Spacer()
                    }
                }
            }
            .padding(.horizontal, 8)
    }
}

#Preview {
    ChatMessageCell(isFromCurrentUser: false)
}
