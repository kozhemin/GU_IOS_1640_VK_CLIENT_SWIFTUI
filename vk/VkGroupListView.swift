//
//  VkGroupListView.swift
//  vk
//
//  Created by Егор Кожемин on 28.01.2022.
//

import SwiftUI

struct VkGroupListView: View {
    var groupList = GroupItems(items:[])
    
    var body: some View {
        List(groupList.items){ group in
            GroupCell(group: group)
        }
        .listStyle(PlainListStyle())
        .navigationTitle("Группы")
    }
}

struct VkGroupListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            VkGroupListView(groupList: groupDemoData)
        }
    }
}
