//
//  ChatView.swift
//  MessengerSwiftUI
//
//  Created by Oleksandr Isaiev on 10.06.2024.
//

import SwiftUI

struct ChatView: View {

    @State private var messageText = ""

    var body: some View {
        VStack {
            ScrollView {
                VStack {
                    CircularProfileImageView(profileImageUrl: User.mockUser.profileImageUrl, size: .xxLarge)

                    VStack(spacing: 4) {
                        Text(User.mockUser.fullName)
                            .font(.title)
                            .fontWeight(.semibold)

                        Text("Messenger")
                            .font(.footnote)
                            .foregroundStyle(.gray)
                    }
                }
            }

            Spacer()

            ZStack(alignment: .trailing) {
                TextField("Message...", text: $messageText, axis: .vertical)
                    .padding(12)
                    .padding(.trailing, 48)
                    .background(Color(.systemGroupedBackground))
                    .clipShape(Capsule())
                    .font(.subheadline)

                Button {

                } label: {
                    Text("Send")
                        .fontWeight(.semibold)
                }
                .padding(.horizontal)
            }
            .padding()
        }
    }
}

#Preview {
    ChatView()
}
