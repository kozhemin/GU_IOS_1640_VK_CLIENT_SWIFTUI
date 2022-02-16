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
        UITabBarWrapper([
            TabBarElement(tabBarElementItem: .init(title: "Друзья", systemImageName: "person.2.fill")) {
                NavigationView {
                    VkFriendListView(viewModel: friendViewModel)
                }
            },
            TabBarElement(tabBarElementItem: .init(title: "Группы", systemImageName: "rectangle.stack.person.crop")) {
                NavigationView {
                    VkGroupListView(viewModel: groupViewModel)
                }
            },
            TabBarElement(tabBarElementItem: .init(title: "Лента", systemImageName: "rectangle.3.offgrid.bubble.left")) {
                NavigationView {
                    VkNewsFeedView()
                }
            },

        ])
            .navigationBarBackButtonHidden(true)
            .ignoresSafeArea()
    }
}

struct VkMainView_Previews: PreviewProvider {
    static var previews: some View {
        VkMainView()
    }
}
