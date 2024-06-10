//
//  AuthServiceProtocol.swift
//  MessengerSwiftUI
//
//  Created by Oleksandr Isaiev on 10.06.2024.
//

import Foundation

protocol AuthServiceProtocol {
    func login(withEmail email: String, password: String) async throws
    func createUser(withEmail email: String, password: String, fullName: String) async throws
}
