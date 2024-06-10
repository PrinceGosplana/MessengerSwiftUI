//
//  ChatBubble.swift
//  MessengerSwiftUI
//
//  Created by Oleksandr Isaiev on 10.06.2024.
//

import SwiftUI

struct ChatBubble: Shape {

    var isFromCurrentUser: Bool

    func path(in rest: CGRect) -> Path {
        let path = UIBezierPath(
            roundedRect: rest,
            byRoundingCorners: [
                .topLeft,
                .topRight,
                isFromCurrentUser ? .bottomLeft : .bottomRight
            ],
            cornerRadii: CGSize(width: 16, height: 16)
        )

        return Path(path.cgPath)
    }
}
