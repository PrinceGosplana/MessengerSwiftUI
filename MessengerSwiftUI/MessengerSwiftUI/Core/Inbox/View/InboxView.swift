//
//  InboxView.swift
//  MessengerSwiftUI
//
//  Created by Oleksandr Isaiev on 08.06.2024.
//

import SwiftUI

struct InboxView: View {
    var body: some View {
        NavigationStack {
            ScrollView {

            }
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
