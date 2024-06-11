//
//  AuthService.swift
//  MessengerSwiftUI
//
//  Created by Oleksandr Isaiev on 10.06.2024.
//


final class AuthService: AuthServiceProtocol {

    func login(withEmail email: String, password: String) async throws {

    }

    func createUser(withEmail email: String, password: String, fullName: String) async throws {
        do {
            print("Create user \(fullName) with email \(email)")
        } catch {
            print("Failed to create user with error: \(error.localizedDescription)")
        }
    }
}
