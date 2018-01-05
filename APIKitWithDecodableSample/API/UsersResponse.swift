//
//  UsersResponse.swift
//  APIKitWithDecodableSample
//
//  Created by KoichiroOishi on 2018/01/05.
//  Copyright © 2018年 SuguruKishimoto. All rights reserved.
//

import Foundation

struct UsersResponse: CustomDecodingStrategy {
    let users: [User]

    static var decodingStrategies: Strategies {
        return Repository.decodingStrategies
    }
}

extension UsersResponse: Codable {
    init(from decoder: Decoder) throws {
        self.init(users: try [User](from: decoder))
    }

    func encode(to encoder: Encoder) throws {
        try users.encode(to: encoder)
    }
}
