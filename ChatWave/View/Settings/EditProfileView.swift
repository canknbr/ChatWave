//
//  EditProfileView.swift
//  ChatWave
//
//  Created by Can Kanbur on 7.06.2023.
//

import SwiftUI

struct EditProfileView: View {
    @State private var fullname = "Can Kanbur"
    @State private var showImagePicker = false
    @State var selectedImage : UIImage?
    @State var profileImage : Image?
    var body: some View {
        VStack(alignment: .leading) {
            VStack {
                HStack(alignment: .top) {
                    VStack {
                        if let profileImage = profileImage {
                            profileImage
                                .resizable()
                                .scaledToFit()
                                .frame(width: 64, height: 64)
                                .clipShape(Circle())
                        }else{
                            Image("can")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 64, height: 64)
                                .clipShape(Circle())
                        }

                        Button {
                            showImagePicker.toggle()
                        } label: {
                            Text("Edit")
                        }.sheet(isPresented: $showImagePicker, onDismiss: loadImage) {
                            ImagePicker(image: $selectedImage)
                        }
                    }

                    Text("Enter your name or change your profile photo")
                        .font(.system(size: 16))
                        .foregroundColor(.gray)
                        .padding([.bottom, .horizontal])
                }
                .padding(.top)
                Divider()
                    .padding(.horizontal)
                TextField("", text: $fullname)
                    .padding(12)
            }
            

            VStack(alignment: .leading) {
                Text("Status")
                    .padding()
                    .foregroundColor(.gray)
                NavigationLink {
                    StatusSelectorView()
                } label: {
                    HStack {
                        Text("At the moview")
                        Spacer()
                        Image(systemName: "chevron.right")
                            .foregroundColor(.gray)
                    }
                    .padding()
                }

            }
            Spacer()
        }
        .padding(.top, 50)
        .navigationTitle("Edit Profile")
    }
    func loadImage(){
        guard let selectedImage = selectedImage else {return}
        profileImage = Image(uiImage: selectedImage)
    }
}

struct EditProfileView_Previews: PreviewProvider {
    static var previews: some View {
        EditProfileView()
    }
}
