//
//  MainButtonModifier.swift
//  MessengerSwiftUI
//
//  Created by Oleksandr Isaiev on 08.06.2024.
//

import SwiftUI

struct MainButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .fontWeight(.semibold)
            .foregroundStyle(.white)
            .frame(maxWidth: .infinity, maxHeight: 44)
            .background(Color(.systemBlue))
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}
