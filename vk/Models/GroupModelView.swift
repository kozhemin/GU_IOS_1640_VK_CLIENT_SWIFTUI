//
//  GroupModelView.swift
//  vk
//
//  Created by Егор Кожемин on 02.02.2022.
//

import Combine

class GroupModelView: ObservableObject {
    var groups: [Group] = []
    
    internal let objectWillChange = ObjectWillChangePublisher()
    private let networkService = NetworkService()
    
    public func fetch() {
        networkService.getGroups{ [self] data in
            self.groups = data
            objectWillChange.send()
        }
    }
}
