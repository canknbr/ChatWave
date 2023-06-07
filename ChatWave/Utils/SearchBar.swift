//
//  SearchBar.swift
//  ChatWave
//
//  Created by Can Kanbur on 7.06.2023.
//

import SwiftUI

struct SearchBar: View {
    @Binding var text : String
    @Binding var isEditing : Bool
    var body: some View {
        HStack{
            
            TextField("Search...", text: $text)
                .autocorrectionDisabled()
                .textInputAutocapitalization(.never)
                .padding(8)
                .padding(.horizontal,28)
                .background(Color(.systemGray6))
                .cornerRadius(10)
                .overlay(
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.gray)
                        .frame(minWidth: 0,maxWidth: .infinity,alignment: .leading)
                        .padding(.leading,8)
                )
            if isEditing {
                Button {
                    isEditing = false
                    text = ""
                    UIApplication.shared.endEditing()
                } label: {
                    Text("Cancel")
                        .foregroundColor(.black)
                    
                }
                .padding(.trailing,8)
                .animation(.easeIn(duration: 0.2), value: isEditing)
                .transition(.move(edge: .trailing))
                

            }
        }
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar(text: .constant("Search..."),isEditing: .constant(true))
    }
}
