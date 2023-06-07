//
//  StatusSelectorView.swift
//  ChatWave
//
//  Created by Can Kanbur on 7.06.2023.
//

import SwiftUI

struct StatusSelectorView: View {
    @ObservedObject var viewModel = StatusViewModel()
    var body: some View {
        ZStack {
            Color(.systemGroupedBackground)
                .ignoresSafeArea()

            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading) {
                    Text("Currently Set To".uppercased())
                        .foregroundColor(.gray)
                        .padding()

                    StatusCell(status: viewModel.status)

                    Text("Select your status".uppercased()).foregroundColor(.gray)
                        .padding()
                    ForEach(UserStatus.allCases.filter({$0 != .notConfigured}),id:\.self) { status in
                        Button {
                            viewModel.updateStatus(status)
                        } label: {
                            StatusCell(status: status)
                        }

                    }
                }
                
            }
        }
    }
}

struct StatusSelectorView_Previews: PreviewProvider {
    static var previews: some View {
        StatusSelectorView()
    }
}

struct StatusCell: View {
    let status : UserStatus
    var body: some View {
        
        HStack {
            Text(status.title)
                .foregroundColor(.black)
            Spacer()
        }
        .frame(height: 60)
        .padding(.horizontal)
        
        .background(.white)
    }
}
