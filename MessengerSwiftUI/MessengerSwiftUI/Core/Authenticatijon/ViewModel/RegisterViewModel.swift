//
//  RegisterViewModel.swift
//  MessengerSwiftUI
//
//  Created by Oleksandr Isaiev on 11.06.2024.
//

import SwiftUI

final class RegisterViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var fullName = ""

    func createUser() async throws {
        try await AuthService().createUser(
            withEmail: email,
            password: password,
            fullName: fullName
        )
    }
}
