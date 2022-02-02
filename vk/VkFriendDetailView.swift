//
//  VkFriendDetailView.swift
//  vk
//
//  Created by Егор Кожемин on 28.01.2022.
//

import SwiftUI

struct VkFriendDetailView: View {
    var friend: Friend
    
    var body: some View {
        VStack(alignment: .center) {
            userAvatar
            userNickName
            
            VkUserGallery()
            Spacer()
        }
        .padding()
        .navigationTitle(friend.fullName)
    }
}

extension VkFriendDetailView {
    var userAvatar: some View {
        Image("user-avatar")
            .resizable()
            .frame(width: 200, height: 200)
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
    
    private let items = 1...5
    private let columns = [
        GridItem(.adaptive(minimum: 100), spacing: 15)
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 15) {
                ForEach (items, id: \.self) { i in
                    Image("post\(i)")
                        .resizable()
                        .scaledToFit()
                }
            }
        }
    }
}

struct VkFriendDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            VkFriendDetailView(friend: friendDemoData.items.first!)
        }
    }
}
