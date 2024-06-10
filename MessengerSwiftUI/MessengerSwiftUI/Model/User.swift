//
//  User.swift
//  MessengerSwiftUI
//
//  Created by Oleksandr Isaiev on 10.06.2024.
//


struct User: Codable, Identifiable, Hashable {
    let id: String
    let fullName: String
    let email: String
    var profileImageUrl: String?
}

extension User {
    static let mockUser = User(id: "BC0B7A87-B914-47AA-A4A5-E37294CF236E", fullName: "Dan Warzo", email: "denwarzo@test.com", profileImageUrl: "profile-picture")
}
