//
//  CustomTextField.swift
//  ChatWave
//
//  Created by Can Kanbur on 7.06.2023.
//

import SwiftUI

struct CustomTextField: View {
    var imageName : String
    var placeholderText : String
    var isSecure : Bool
    @Binding var text:String
    var body: some View {
        VStack {
            HStack {
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.gray)
                    .frame(width: 20,height: 20)
                if isSecure {
                    SecureField(placeholderText, text: $text)
                        .autocorrectionDisabled()
                        .textInputAutocapitalization(TextInputAutocapitalization.never)
                }else{
                    TextField(placeholderText, text: $text)
                        .autocorrectionDisabled()
                        .textInputAutocapitalization(TextInputAutocapitalization.never)
                }
               
            }
            Divider()
        }
    }
}

