//
//  MainTabView.swift
//  ChatWave
//
//  Created by Can Kanbur on 7.06.2023.
//

import SwiftUI

struct MainTabView: View {
    @State private var selectedIndex = 0
    var body: some View {
        NavigationStack {
            TabView(selection: $selectedIndex) {
                ConversationsView()
                    .tabItem {
                        Image(systemName: "bubble.left")
                    }
                    .onTapGesture {
                        selectedIndex = 0
                    }
                    .tag(0)
                ChannelsView()
                    .tabItem {
                        Image(systemName: "bubble.left.and.bubble.right")
                    }
                    .onTapGesture {
                        selectedIndex = 1
                    }
                    .tag(1)
                SettingsView()
                    .tabItem {
                        Image(systemName: "gear")
                    }
                    .onTapGesture {
                        selectedIndex = 2
                    }
                    .tag(2)
            }.navigationTitle(tabTitle)
        }
    }

    var tabTitle: String {
        switch selectedIndex {
        case 0: return "Chats"
        case 1: return "Channels"
        case 2: return "Settings"
        default: return ""
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
