//
//  TextFieldModifier.swift
//  MessengerSwiftUI
//
//  Created by Oleksandr Isaiev on 08.06.2024.
//

import SwiftUI

struct TextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .padding(12)
            .background(Color(.systemGray6))
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}
