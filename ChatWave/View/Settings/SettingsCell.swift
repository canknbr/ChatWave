//
//  SettingsCell.swift
//  ChatWave
//
//  Created by Can Kanbur on 7.06.2023.
//

import SwiftUI

struct SettingsCell: View {
    let viewModel : SettingsCellViewModel
    var body: some View {
        VStack{
            HStack{
                Image(systemName: viewModel.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 22,height: 22)
                    .padding(6)
                    .background(viewModel.bgColor)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                
                Text(viewModel.title)
                    .font(.system(size: 15))
                Spacer()
                Image(systemName: "chevron.right")
                    .foregroundColor(.gray)
            }.padding([.top,.horizontal])
            Divider()
                .padding(.leading)
        }
    }
}

struct SettingsCell_Previews: PreviewProvider {
    static var previews: some View {
        SettingsCell(viewModel: .starredMessages)
    }
}
