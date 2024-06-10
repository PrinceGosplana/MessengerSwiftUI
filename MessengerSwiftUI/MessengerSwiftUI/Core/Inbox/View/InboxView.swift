//
//  InboxView.swift
//  MessengerSwiftUI
//
//  Created by Oleksandr Isaiev on 08.06.2024.
//

import SwiftUI

struct InboxView: View {

    @State private var showNewMessageView = false
    @State private var user = User.mockUser

    var body: some View {
        NavigationStack {
            GeometryReader { proxy in
                ScrollView {
                    ActiveNowView()

                    List {
                        ForEach( 0 ... 10, id: \.self) { message in
                            InboxRow()
                        }
                    }
                    .listStyle(PlainListStyle())
                    .frame(height: proxy.size.height - 100)
                }
            }
            .fullScreenCover(isPresented: $showNewMessageView, content: {
                NewMessageView()
            })
            .navigationDestination(for: User.self, destination: { user in
                ProfileView(user: user)
            })
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    HStack {
                        NavigationLink(value: user) {
                            Image(user.profileImageUrl ?? "")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 32, height: 32)
                                .clipShape(Circle())
                        }

                        Text("Chats")
                            .font(.title)
                            .fontWeight(.semibold)
                    }
                }

                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        showNewMessageView.toggle()
                    }label: {
                        Image(systemName: "square.and.pencil.circle.fill")
                            .resizable()
                            .frame(width: 32, height: 32)
                            .foregroundStyle(.black, Color(.systemGray6))
                    }
                }
            }
        }
    }
}

#Preview {
    InboxView()
}
