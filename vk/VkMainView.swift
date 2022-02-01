//
//  VkMainView.swift
//  vk
//
//  Created by Егор Кожемин on 28.01.2022.
//

import SwiftUI

struct VkMainView: View {
    var body: some View {
        
        TabView {
            NavigationView {
                VkFriendListView(friendList: friendDemoData)
            }
            .tabItem {
                Image(systemName: "person.2.fill")
                Text("Друзья")
            }
            
            NavigationView {
                VkGroupListView(groupList: groupDemoData)
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
