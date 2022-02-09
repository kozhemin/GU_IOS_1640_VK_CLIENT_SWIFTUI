//
//  UserCellView.swift
//  vk
//
//  Created by Егор Кожемин on 26.01.2022.
//

import SwiftUI

struct UserCell: View {
    var friend: Friend

    init(friend: Friend) {
        self.friend = friend
    }

    var body: some View {
        HStack(spacing: 15) {
            userAvatar
            VStack(alignment: .leading) {
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
        AsyncImage(url: friend.photoUrl){ image in
            image.resizable()
        } placeholder: {
            ProgressView()
        }
        .frame(width: 80, height: 80)
        .modifier(CircleShadow(shadowColor: .orange, shadowRadius: 3))
        .modifier(SpringAnimation())
    }

    var userFio: some View {
        Text(friend.fullName)
            .font(.system(size: 16))
            .lineLimit(1)
    }

    var userLogin: some View {
        Text(friend.nickName ?? "")
            .font(.body)
            .foregroundColor(.gray)
            .lineLimit(1)
    }
}

struct UserCellView_Previews: PreviewProvider {
    static var previews: some View {
        UserCell(friend: friendDemoData.items.first!)
            .previewLayout(PreviewLayout.sizeThatFits)
    }
}
