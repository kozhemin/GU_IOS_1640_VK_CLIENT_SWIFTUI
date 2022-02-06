//
//  CircleImage.swift
//  vk
//
//  Created by Егор Кожемин on 26.01.2022.
//

import SwiftUI

struct CircleShadow: ViewModifier {
    let shadowColor: Color
    let shadowRadius: CGFloat

    func body(content: Content) -> some View {
        content
            .clipShape(Circle())
            .shadow(color: shadowColor, radius: shadowRadius)
            .overlay(Circle().stroke(shadowColor, lineWidth: 1))
    }
}
