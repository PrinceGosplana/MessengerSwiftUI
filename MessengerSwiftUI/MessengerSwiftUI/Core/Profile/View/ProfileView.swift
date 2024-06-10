//
//  ProfileView.swift
//  MessengerSwiftUI
//
//  Created by Oleksandr Isaiev on 09.06.2024.
//

import SwiftUI
import PhotosUI

struct ProfileView: View {

    @StateObject var viewModel = ProfileViewModel()
    private let user: User

    init(user: User) {
        self.user = user
    }

    var body: some View {
        VStack {
            VStack {
                PhotosPicker(selection: $viewModel.selectedItem) {
                    CircularProfileImageView(profileImageUrl: user.profileImageUrl, size: .xxLarge)
                }

                Text(user.fullName)
                    .font(.title2)
                    .fontWeight(.semibold)
            }

            List {
                Section {
                    ForEach(SettingsOptionsViewModel.allCases) { option in
                        HStack {
                            Image(systemName: option.imageName)
                                .resizable()
                                .frame(width: 24, height: 24)
                                .foregroundStyle(option.imageBackgroundColor)

                            Text(option.title)
                                .font(.subheadline)
                        }
                    }
                }

                Section {
                    Button("Log Out") {

                    }

                    Button("Delete Account") {

                    }
                }
                .foregroundStyle(.red)
            }
        }
    }
}

#Preview {
    ProfileView(user: User.mockUser)
}
