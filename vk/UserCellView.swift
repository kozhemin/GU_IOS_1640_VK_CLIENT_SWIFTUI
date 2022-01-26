//
//  UserCellView.swift
//  vk
//
//  Created by Егор Кожемин on 26.01.2022.
//

import SwiftUI

struct UserCellView: View {
    var body: some View {
        UserCell()
    }
}

struct UserCell: View {
    
    var body: some View {
        HStack(spacing: 15){
            userAvatar
            VStack (alignment:.leading){
                userFio
                userLogin
            }
            Spacer()
        }
        .padding(5)
    }
}

private extension UserCell {
    
    var userAvatar: some View {
        Image("user-avatar")
            .resizable()
            .frame(width: 100, height: 100)
            .modifier(CircleShadow(shadowColor: .orange, shadowRadius: 3))
    }
    
    var userFio: some View {
        Text("Иванов Иван")
            .font(.title)
            .lineLimit(1)
    }
    
    var userLogin: some View {
        Text("ivanov@")
            .font(.body)
            .foregroundColor(.gray)
            .lineLimit(1)
    }
}

struct UserCellView_Previews: PreviewProvider {
    static var previews: some View {
        UserCellView()
    }
}
