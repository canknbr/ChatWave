//
//  SettingsView.swift
//  ChatWave
//
//  Created by Can Kanbur on 7.06.2023.
//

import SwiftUI

struct SettingsView: View {
    
    var body: some View {
        GeometryReader { geo in
            ZStack {
                VStack(spacing: 32) {
                    NavigationLink {
                        EditProfileView()
                    } label: {
                        SettingsHeaderView()
                    }

                    
                    VStack(spacing:2) {
                        ForEach(SettingsCellViewModel.allCases,id: \.self) { viewModel in
                            SettingsCell(viewModel: viewModel)
                        }
                    }
                    Button {
                        print("")
                    } label: {
                        Text("Log Out")
                            .font(.headline)
                            .foregroundColor(.red)
                            .frame(width: geo.size.width)
                            
                            
                    }

                    Spacer()
                }
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
