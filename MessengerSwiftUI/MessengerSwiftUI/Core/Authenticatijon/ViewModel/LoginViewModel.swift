//
//  LoginViewModel.swift
//  MessengerSwiftUI
//
//  Created by Oleksandr Isaiev on 10.06.2024.
//

import SwiftUI

final class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""

    func login() async throws {
        try await AuthService().login(withEmail: email, password: password)
    }
}
