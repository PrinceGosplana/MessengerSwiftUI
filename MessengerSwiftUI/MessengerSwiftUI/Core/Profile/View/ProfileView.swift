//
//  ProfileView.swift
//  MessengerSwiftUI
//
//  Created by Oleksandr Isaiev on 09.06.2024.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            VStack {
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .foregroundStyle(Color(.systemGray4))

                Text("Person Name")
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
    ProfileView()
}
