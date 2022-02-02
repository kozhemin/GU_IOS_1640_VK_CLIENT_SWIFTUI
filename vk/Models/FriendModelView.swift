//
//  FriendModelView.swift
//  vk
//
//  Created by Егор Кожемин on 02.02.2022.
//

import Combine

class FriendModelView: ObservableObject {
    @Published var friends: [Friend] = []
    private let networkService = NetworkService()

    public func fetch() {
        networkService.getFriends { data in
            self.friends = data
        }
    }
}
