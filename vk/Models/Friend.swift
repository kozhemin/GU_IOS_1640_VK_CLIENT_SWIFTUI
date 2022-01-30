//
//  Friend.swift
//  vk
//
//  Created by Егор Кожемин on 28.01.2022.
//

import Foundation

struct FriendItems: Codable {
    var items: [Friend]
}

struct Friend: Codable, Identifiable {
    var id: Double
    var firstName: String
    var lastName: String
    var nickName: String?
    var photo: String
    var domain: String?
    var sex: Int?
    
    enum CodingKeys: String, CodingKey {
        case id
        case firstName = "first_name"
        case lastName = "last_name"
        case nickName = "nickname"
        case photo = "photo_100"
        case domain
        case sex
    }
}

extension Friend {
    var fullName: String {
        return "\(firstName) \(lastName)"
    }
}

extension Friend {
    var photoUrl: URL? {
        URL(string: photo)
    }
}


#if DEBUG
let friendDemoData =  FriendItems(items: [
    Friend(id: 1, firstName: "Иван", lastName: "Иванов", nickName: "ivanov@", photo: ""),
    Friend(id: 2, firstName: "Степан", lastName: "Петров", nickName: "stepan@", photo: ""),
    Friend(id: 3, firstName: "Константин", lastName: "Константинов", nickName: "kostya@", photo: ""),
    Friend(id: 4, firstName: "Афродита", lastName: "Степановна", nickName: "afro@", photo: ""),
    Friend(id: 5, firstName: "Айседора", lastName: "Андреевна", nickName: "aisedora@", photo: "")
])
#endif
