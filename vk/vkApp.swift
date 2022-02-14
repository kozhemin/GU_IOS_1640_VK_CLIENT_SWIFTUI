//
//  vkApp.swift
//  vk
//
//  Created by Егор Кожемин on 21.01.2022.
//

import SwiftUI

@main
struct vkApp: App {
    @UIApplicationDelegateAdaptor private var appDelegate: AppDelegate
    @State var isLogin: Bool = false

    var body: some Scene {
        WindowGroup {
            if isLogin {
                VkMainView()
            } else {
                VkLoginFromWebView(isLogin: $isLogin)
            }
        }
    }
}
