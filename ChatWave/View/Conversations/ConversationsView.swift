//
//  ConversationsView.swift
//  ChatWave
//
//  Created by Can Kanbur on 7.06.2023.
//

import SwiftUI

struct ConversationsView: View {
    @State private var showNewMessageView = false
    @State private var showChatView = true
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            NavigationLink(destination: ChatsView(),isActive: $showChatView) {
                
            }
            ScrollView {
                VStack(alignment: .leading) {
                    HStack { Spacer() }
                    ForEach(0 ... 10, id: \.self) { _ in
                        ConversationCellView()
                    }
                }
            }

            Button {
                showNewMessageView.toggle()
            } label: {
                Image(systemName: "plus")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 24, height: 24)
                    .padding()

            }.background(Color(.systemBlue))
                .foregroundColor(.white)
                .clipShape(Circle())
                .padding()
                .sheet(isPresented: $showNewMessageView) {
                    NewMessageView(showChatView: $showChatView)
                }
        }
    }
}

struct ConversationsView_Previews: PreviewProvider {
    static var previews: some View {
        ConversationsView()
    }
}
