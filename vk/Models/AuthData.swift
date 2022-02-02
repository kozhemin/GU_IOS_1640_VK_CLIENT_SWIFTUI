//
//  AuthData.swift
//  vk
//
//  Created by Егор Кожемин on 02.02.2022.
//

protocol AuthDataProtocol {
    var token: String { get set }
    var userId: Int { get set }
}

final class AuthData: AuthDataProtocol {
    var token = ""
    var userId = 0
    static let share = AuthData()
    private init() {}
}
