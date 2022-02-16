//
//  VkFriendDetailView.swift
//  vk
//
//  Created by Егор Кожемин on 28.01.2022.
//

import SwiftUI

struct VkFriendDetailView: View {
    var friend: Friend
    @State private var scale: CGFloat = 1.0

    var body: some View {
        ScrollView {
            VStack(alignment: .center) {
                userAvatar
                userNickName

                VkUserGallery(friend: friend)
                Spacer()
            }
            .padding()
            .navigationTitle(friend.fullName)
        }
    }
}

extension VkFriendDetailView {
    var userAvatar: some View {
        AsyncImage(url: friend.photoUrl) { image in
            image.resizable()
        } placeholder: {
            ProgressView()
        }
        .frame(width: 200 * scale, height: 200 * scale)
        .modifier(CircleShadow(shadowColor: .orange, shadowRadius: 3))
    }
}

extension VkFriendDetailView {
    var userNickName: some View {
        Text(friend.nickName ?? "-")
            .foregroundColor(.gray)
            .font(.headline)
    }
}

private struct VkUserGallery: View {
    var friend: Friend
    @EnvironmentObject var viewModel: FriendModelView

    private let columns = [
        GridItem(.adaptive(minimum: 100), spacing: 15),
    ]

    var body: some View {
        LazyVGrid(columns: columns, spacing: 15) {
            ForEach(viewModel.gallery, id: \.self) { g in
                if let img = g.items.getImageByType(type: "x"),
                   let imgUrl = img.photoUrl
                {
                    AsyncImage(url: imgUrl) { image in
                        image
                            .resizable()
                            .scaledToFit()
                    } placeholder: {
                        ProgressView()
                    }
                }
            }
        }
        .onAppear {
            viewModel.fetchGallery(ownerId: Int(friend.id))
        }
    }
}

struct VkFriendDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            VkFriendDetailView(friend: friendDemoData.items.first!)
        }
    }
}
