//
//  VkFriendListView.swift
//  vk
//
//  Created by Егор Кожемин on 28.01.2022.
//

import SwiftUI

struct VkFriendListView: View {
    var friendList = FriendItems(items: [])
    
    var body: some View {
        List(friendList.items) { friend in
            NavigationLink(destination: VkFriendDetailView(friend: friend)) {
                UserCell(friend: friend)
            }
        }
        .listStyle(PlainListStyle())
        .navigationTitle("Друзья")
    }
}

struct VkFriendListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            VkFriendListView(friendList: friendDemoData)
        }
    }
}
