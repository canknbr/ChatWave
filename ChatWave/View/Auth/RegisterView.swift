//
//  RegisterView.swift
//  ChatWave
//
//  Created by Can Kanbur on 7.06.2023.
//

import SwiftUI

struct RegisterView: View {
    @State private var email = ""
    @State private var username = ""
    @State private var fullname = ""
    @State private var password = ""
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                HStack { Spacer() }
                Text("Get Started.")
                    .font(.largeTitle)
                    .bold()
                Text("Create Your Account")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.blue)
                VStack(spacing: 40) {
                    CustomTextField(imageName: "envelope", placeholderText: "Email", isSecure: false, text: $email)

                    CustomTextField(imageName: "person", placeholderText: "Username", isSecure: false, text: $username)
                    CustomTextField(imageName: "person", placeholderText: "Full Name", isSecure: false, text: $fullname)
                    CustomTextField(imageName: "lock", placeholderText: "Password", isSecure: true, text: $password)

                }.padding([.top, .horizontal], 32)

            }.padding(.leading)
            Button {
                print("asd")
            } label: {
                Text("Sign Up")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 340, height: 50)
                    .background(.blue)
                    .clipShape(Capsule())
                    .padding()
            }.shadow(color: .gray, radius: 10, x: 0, y: 0)
                .padding(.top,24)
            Spacer()
            Button {
                dismiss()
            } label: {
                Spacer()
                Text("Already have an account")
                Text("Sign In")
                    .bold()
                Spacer()
            }

        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
