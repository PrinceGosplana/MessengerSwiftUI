//
//  LoginView.swift
//  MessengerSwiftUI
//
//  Created by Oleksandr Isaiev on 08.06.2024.
//

import SwiftUI

struct LoginView: View {

    @StateObject private var viewModel = LoginViewModel()

    var body: some View {
        NavigationStack {
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
                    TextField("Enter your email", text: $viewModel.email)
                        .modifier(TextFieldModifier())

                    SecureField("Enter your password", text: $viewModel.password)
                        .modifier(TextFieldModifier())
                }
                .padding(.horizontal, 24)

                // forgot password

                Button {

                } label: {
                    Text("Forgot password?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.top)
                        .padding(.trailing, 28)
                }
                .frame(maxWidth: .infinity, alignment: .trailing)

                // login button
                Button {
                    Task { try await viewModel.login() }
                } label: {
                    Text("Login")
                        .modifier(MainButtonModifier())
                        .padding(.horizontal, 24)
                }
                .padding(.vertical)

                // facebook login
                HStack {
                    Rectangle()
                        .frame(maxWidth: .infinity, maxHeight: 0.5)

                    Text("OR")
                        .font(.footnote)
                        .fontWeight(.semibold)

                    Rectangle()
                        .frame(maxWidth: .infinity, maxHeight: 0.5)
                }
                .padding(.horizontal, 20)
                .foregroundStyle(.gray)

                HStack {
                    Image(.facebookLogo)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)

                    Text("Continue with Facebook")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundStyle(Color(.systemBlue))
                }
                .padding(.top, 8)

                Spacer()

                Divider()

                // sign up link

                NavigationLink {
                    RegistrationView()
                        .navigationBarBackButtonHidden()
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
}

#Preview {
    LoginView()
}
