//
//  vkApp.swift
//  vk
//
//  Created by Егор Кожемин on 21.01.2022.
//

import SwiftUI

@main
struct vkApp: App {
    @State var isLogin: Bool = false
    
    init() {
        configureUiView()
    }
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                VStack {
                    
                    VkLoginView(isLogin: $isLogin)
                    
                    NavigationLink(
                        destination: VkMainView(),
                        isActive: $isLogin,
                        label: { EmptyView() })
                }
            }
        }
    }
    
    private func configureUiView(){
        let appearance = UINavigationBarAppearance()
        let navColor = Color("vkBgColor")
        
        appearance.backgroundColor = UIColor(navColor)
        
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
        UINavigationBar.appearance().barTintColor = UIColor(navColor)
        UINavigationBar.appearance().backgroundColor = UIColor(navColor)
        UINavigationBar.appearance().tintColor = .white
        
        UITableView.appearance().backgroundColor = UIColor.clear
    }
}
