//
//  VkLoginFromWebView.swift
//  vk
//
//  Created by Егор Кожемин on 02.02.2022.
//

import SwiftUI

struct VkLoginFromWebView: View {
    @Binding var isLogin: Bool
    var body: some View {
        VkWebView(){
            isLogin = true
        }
    }
}

struct VkLoginFromWebView_Previews: PreviewProvider {
    static var previews: some View {
        VkLoginFromWebView(isLogin: .constant(true))
    }
}
