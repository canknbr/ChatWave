//
//  SettingsHeaderView.swift
//  ChatWave
//
//  Created by Can Kanbur on 7.06.2023.
//

import SwiftUI

struct SettingsHeaderView: View {
    var body: some View {
        HStack {
            Image("can")
                .resizable()
                .scaledToFit()
                .frame(width: 64, height: 64)
                .clipShape(Circle())
                .padding(.leading)
            VStack(alignment: .leading) {
                Text("person name")
                    .foregroundColor(.black)
                    .font(.system(size: 18))
                Text("status")
                    .font(.system(size: 14))
                    .foregroundColor(.gray)
            }
            Spacer()
        }
        .frame(height: 80)
    }
}

struct SettingsHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsHeaderView()
    }
}
