//
//  UserCellView.swift
//  ChatWave
//
//  Created by Can Kanbur on 7.06.2023.
//

import SwiftUI

struct UserCellView: View {
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
                        .foregroundColor(.black)
                    Text("@rbnknc")
                        .font(.system(size: 14))
                        .foregroundColor(.gray)
                }
                Spacer()
            }
            .padding(.horizontal)
            
        }
        .padding(.top)
    }
}

struct UserCellView_Previews: PreviewProvider {
    static var previews: some View {
        UserCellView()
    }
}
