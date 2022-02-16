//
//  VkFriendListView.swift
//  vk
//
//  Created by Егор Кожемин on 28.01.2022.
//

import SwiftUI

struct VkFriendListView: View {
    @ObservedObject var viewModel: FriendModelView

    init(viewModel: FriendModelView) {
        self.viewModel = viewModel
    }

    var body: some View {
        List(viewModel.friends) { friend in
            NavigationLink(
                destination: VkFriendDetailView(friend: friend).environmentObject(viewModel)) {
                UserCell(friend: friend)
            }
        }
        .listStyle(PlainListStyle())
        .onAppear {
            viewModel.fetch()
        }
        .navigationTitle("Друзья")
    }
}

struct VkFriendListView_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = FriendModelView()
        NavigationView {
            VkFriendListView(viewModel: viewModel)
        }
    }
}
