//
//  LoginView.swift
//  MessengerSwiftUI
//
//  Created by Oleksandr Isaiev on 08.06.2024.
//

import SwiftUI

struct LoginView: View {

    @State private var email = ""
    @State private var password = ""

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

                VStack {
                    TextField("Enter your email", text: $email)

                    SecureField("Enter your password", text: $password)
                }
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

                } label: {
                    Text("Login")
                }

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
                    Text("Sign up View")
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
