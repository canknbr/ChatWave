//
//  NewMessageView.swift
//  ChatWave
//
//  Created by Can Kanbur on 7.06.2023.
//

import SwiftUI

struct NewMessageView: View {
    @Binding var showChatView : Bool
    @Environment(\.dismiss) var dismiss
    @State var searchText = ""
    @State var isEditing = false
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            SearchBar(text: $searchText,isEditing: $isEditing)
                .onTapGesture {
                    isEditing.toggle()
                }
                .padding()
            VStack{
                ForEach(0...10,id:\.self) { _ in
                    Button {
                        showChatView.toggle()
                        dismiss()
                    } label: {
                        UserCellView()
                    }

                }
            }
        }
    }
}

struct NewMessageView_Previews: PreviewProvider {
    static var previews: some View {
        NewMessageView(showChatView: .constant(true))
    }
}
