//
//  UserCell.swift
//  ChatWave
//
//  Created by Can Kanbur on 7.06.2023.
//

import SwiftUI

struct ConversationCellView: View {
    var body: some View {
        VStack {
            HStack{
                Image("can")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 48,height: 48)
                    .clipShape(Circle())
                VStack(alignment:.leading,spacing: 4){
                    Text("can kanbur")
                        .font(.system(size: 14,weight: .semibold))
                    Text("lorem lorem lorem lorem")
                        .font(.system(size: 14))
                }
                Spacer()
            }
            .padding(.horizontal)
            Divider()
        }
        .padding(.top)
    }
}

struct UserCell_Previews: PreviewProvider {
    static var previews: some View {
        ConversationCellView()
    }
}
