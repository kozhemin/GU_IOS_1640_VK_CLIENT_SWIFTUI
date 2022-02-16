//
//  FriendModelView.swift
//  vk
//
//  Created by Егор Кожемин on 02.02.2022.
//

import Combine

class FriendModelView: ObservableObject {
    @Published var friends: [Friend] = []
    @Published var gallery: [PhotoGallery] = []

    private let networkService = NetworkService()

    public func fetch() {
        networkService.getFriends { data in
            self.friends = data
        }
    }

    public func fetchGallery(ownerId: Int) {
        networkService.getPhotos(ownerId: ownerId) { data in
            self.gallery = data
        }
    }
}
