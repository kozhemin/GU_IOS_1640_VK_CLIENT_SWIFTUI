//
//  GroupCellView.swift
//  vk
//
//  Created by Егор Кожемин on 27.01.2022.
//

import SwiftUI

struct GroupCellView: View {
    var body: some View {
        HStack(alignment: .lastTextBaseline){
            groupAvatar
            VStack(alignment: .leading){
                groupName
                groupDescription
            }
            Spacer()
        }
        .padding(5)
    }
}

private extension GroupCellView {
    
    var groupAvatar: some View {
        Image("group-avatar")
            .resizable()
            .frame(width: 80, height: 80)
            .modifier(CircleShadow(shadowColor: .blue, shadowRadius: 5))
    }
    
    var groupName: some View {
        Text("Life news")
            .font(.system(size: 18))
            .bold()
            .lineLimit(1)
    }
    
    var groupDescription: some View {
        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ")
            .font(.subheadline)
            .multilineTextAlignment(.leading)
            .lineLimit(3)
    }
}

struct GroupCellView_Previews: PreviewProvider {
    static var previews: some View {
        GroupCellView()
    }
}
