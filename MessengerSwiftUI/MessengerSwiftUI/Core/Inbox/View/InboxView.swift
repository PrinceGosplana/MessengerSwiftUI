//
//  InboxView.swift
//  MessengerSwiftUI
//
//  Created by Oleksandr Isaiev on 08.06.2024.
//

import SwiftUI

struct InboxView: View {

    @State private var showNewMessageView = false

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
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    HStack {
                        Image(systemName: "person.circle.fill")

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
