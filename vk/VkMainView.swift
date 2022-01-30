//
//  VkMainView.swift
//  vk
//
//  Created by Егор Кожемин on 28.01.2022.
//

import SwiftUI

struct VkMainView: View {
    var body: some View {
        
        VStack{
            TabView {
                
                VkFriendListView(friendList: friendDemoData)
                    .tabItem {
                        Image(systemName: "person.2.fill")
                        Text("Друзья")
                    }
                
                VkGroupListView(groupList: groupDemoData)
                    .tabItem {
                        Image(systemName: "rectangle.stack.person.crop")
                        Text("Группы")
                    }
                VkNewsFeedView()
                    .tabItem {
                        Image(systemName: "rectangle.3.offgrid.bubble.left")
                        Text("Лента")
                    }
            }
            .navigationBarBackButtonHidden(true)
            Spacer()
        }.padding(.top)
    }
    
}

struct VkMainView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            VkMainView()
        }
    }
}
