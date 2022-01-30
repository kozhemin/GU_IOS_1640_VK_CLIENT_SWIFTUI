//
//  Group.swift
//  app
//
//  Created by Егор Кожемин on 28.01.2022.
//
import UIKit

struct GroupItems: Codable {
    var items: [Group]
}

struct Group: Codable, Identifiable {
    var id: Double
    var name: String
    var screenName: String
    var photo: String
    var description: String

    enum CodingKeys: String, CodingKey {
        case id
        case name
        case screenName = "screen_name"
        case photo = "photo_50"
        case description
    }
}

extension Group {
    var photoUrl: URL? {
        URL(string: photo)
    }
}

#if DEBUG
let groupDemoData = GroupItems(items: [
    Group(id: 1, name: "Swift", screenName: "", photo: "", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua..."),
    Group(id: 2, name: "Golang", screenName: "", photo: "", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua..."),
    Group(id: 3, name: "JavaScript", screenName: "", photo: "", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua..."),
    Group(id: 4, name: "Php", screenName: "", photo: "", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua..."),
    Group(id: 5, name: "Mysql", screenName: "", photo: "", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua...")
])
#endif
