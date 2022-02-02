//
//  VkMainView.swift
//  vk
//
//  Created by Егор Кожемин on 28.01.2022.
//

import SwiftUI

struct VkMainView: View {
    private let friendViewModel = FriendModelView()
    private let groupViewModel = GroupModelView()

    var body: some View {
        TabView {
            NavigationView {
                VkFriendListView(viewModel: friendViewModel)
            }
            .tabItem {
                Image(systemName: "person.2.fill")
                Text("Друзья")
            }

            NavigationView {
                VkGroupListView(viewModel: groupViewModel)
            }
            .tabItem {
                Image(systemName: "rectangle.stack.person.crop")
                Text("Группы")
            }

            NavigationView {
                VkNewsFeedView()
            }
            .tabItem {
                Image(systemName: "rectangle.3.offgrid.bubble.left")
                Text("Лента")
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct VkMainView_Previews: PreviewProvider {
    static var previews: some View {
        VkMainView()
    }
}
