//
//  RegistrationView.swift
//  MessengerSwiftUI
//
//  Created by Oleksandr Isaiev on 08.06.2024.
//

import SwiftUI

struct RegistrationView: View {

    @State private var email = ""
    @State private var password = ""
    @State private var fullName = ""
    @Environment(\.dismiss) var dismiss

    var body: some View {
        VStack {
            
            Spacer()
            
            // logo image
            Image(.facebookMessengerLogo)
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
                .padding()
            
            // text image
            
            VStack(spacing: 12) {
                TextField("Enter your email", text: $email)
                    .modifier(TextFieldModifier())

                TextField("Enter your full name", text: $fullName)
                    .modifier(TextFieldModifier())

                SecureField("Enter your password", text: $password)
                    .modifier(TextFieldModifier())
            }
            .padding(.horizontal, 24)

            Button {

            } label: {
                Text("Sign Up")
                    .modifier(MainButtonModifier())
                    .padding(.horizontal, 24)
            }
            .padding(.vertical)

            Spacer()

            Divider()
            
            Button {
                dismiss()
            } label: {
                HStack(spacing: 3) {
                    Text("Don't have an account?") +

                    Text(" Sign Up")
                        .fontWeight(.semibold)
                }
                .font(.footnote)
            }
            .padding(.vertical)
        }
    }
}

#Preview {
    RegistrationView()
}
