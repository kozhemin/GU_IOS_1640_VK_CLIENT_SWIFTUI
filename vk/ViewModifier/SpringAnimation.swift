//
//  SpringAnimation.swift
//  vk
//
//  Created by Егор Кожемин on 09.02.2022.
//

import SwiftUI

struct SpringAnimation: ViewModifier {
    @State private var scaleValue = CGFloat(1)
    
    func body(content: Content) -> some View {
        content
            .scaleEffect(self.scaleValue)
            .onTapGesture {
                withAnimation(Animation.interactiveSpring(response: 0.45, dampingFraction: 0.70, blendDuration: 0.25)) {
                    self.scaleValue = 1.3
                }
                self.scaleValue = 1.0
            }
    }
}
