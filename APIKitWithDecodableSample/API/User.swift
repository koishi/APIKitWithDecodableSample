//
//  User.swift
//  APIKitWithDecodableSample
//
//  Created by KoichiroOishi on 2018/01/05.
//  Copyright © 2018年 SuguruKishimoto. All rights reserved.
//

import Foundation

struct User: GitHubAPIResponse {
    let id: Int
    let login: String
    let avatar_url: String
}

protocol GitHubAPIResponse:Decodable, CustomDecodingStrategy {
}

extension GitHubAPIResponse {
    static var decodingStrategies: Strategies {
        return (.iso8601, .base64, .throw)
    }
}
