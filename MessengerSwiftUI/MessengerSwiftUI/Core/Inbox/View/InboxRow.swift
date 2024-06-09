//
//  InboxRow.swift
//  MessengerSwiftUI
//
//  Created by Oleksandr Isaiev on 09.06.2024.
//

import SwiftUI

struct InboxRow: View {
    var body: some View {
        HStack(alignment: .top, spacing: 12) {
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 64, height: 64)
                .foregroundStyle(Color(.systemGray4))

            VStack(alignment: .leading, spacing: 4) {
                Text("Heat Neap")
                    .font(.subheadline)
                    .fontWeight(.semibold)

                Text("Some test message for now")
                    .font(.subheadline)
                    .foregroundStyle(.gray)
                    .lineLimit(2)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }

            HStack {
                Text("Yesterday")
                Image(systemName: "chevron.right")
            }
            .font(.footnote)
            .foregroundStyle(.gray)
        }
        .frame(height: 72)
    }
}

#Preview {
    InboxRow()
}
