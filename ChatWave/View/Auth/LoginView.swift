//
//  LoginView.swift
//  ChatWave
//
//  Created by Can Kanbur on 7.06.2023.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    var body: some View {
        NavigationStack {
            VStack {
                VStack(alignment: .leading) {
                    HStack { Spacer() }
                    Text("Hello.")
                        .font(.largeTitle)
                        .bold()
                    Text("Welcome Back")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(.blue)
                    VStack(spacing: 40) {
                        CustomTextField(imageName: "envelope", placeholderText: "Email", isSecure: false, text: $email)
                            
                  CustomTextField(imageName: "lock", placeholderText: "Password", isSecure: true, text: $password)

                    }.padding([.top, .horizontal], 32)

                }.padding(.leading)
                HStack {
                    Spacer()
                    NavigationLink {
                        Text("reset")
                    } label: {
                        Text("Forgot Password")
                            .font(.system(size: 13, weight: .semibold, design: .rounded))
                            .padding(.top)
                            .padding(.trailing, 28)
                    }
                }
                Button {
                    print("asd")
                } label: {
                    Text("Sign In")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(width: 340, height: 50)
                        .background(.blue)
                        .clipShape(Capsule())
                        .padding()
                }.shadow(color: .gray, radius: 10, x: 0, y: 0)
                    .padding(.top,24)

                Spacer()
                NavigationLink {
                    RegisterView()
                        .navigationBarBackButtonHidden(true)
                } label: {
                    Spacer()
                    Text("Don't have an account")
                    Text("Sign Up")
                        .bold()
                    Spacer()
                }.font(.system(size: 14))
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
            .previewDevice("iPhone 14 Pro")
    }
}


