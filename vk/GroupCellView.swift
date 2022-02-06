//
//  GroupCellView.swift
//  vk
//
//  Created by Егор Кожемин on 27.01.2022.
//

import SwiftUI

struct GroupCell: View {
    var group: Group

    init(group: Group) {
        self.group = group
    }

    var body: some View {
        HStack(alignment: .lastTextBaseline) {
            groupAvatar
            VStack(alignment: .leading) {
                groupName
                groupDescription
            }
            Spacer()
        }
        .padding(5)
    }
}

private extension GroupCell {
    var groupAvatar: some View {
        AsyncImage(url: group.photoUrl)
            .frame(width: 80, height: 80)
            .modifier(CircleShadow(shadowColor: .blue, shadowRadius: 5))
    }

    var groupName: some View {
        Text(group.name)
            .font(.system(size: 18))
            .bold()
            .lineLimit(1)
    }

    var groupDescription: some View {
        Text(group.description)
            .font(.subheadline)
            .multilineTextAlignment(.leading)
            .lineLimit(3)
    }
}

struct GroupCellView_Previews: PreviewProvider {
    static var previews: some View {
        GroupCell(group: groupDemoData.items.first!)
            .previewLayout(PreviewLayout.sizeThatFits)
    }
}
