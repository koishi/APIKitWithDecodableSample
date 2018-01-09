//
//  Repository.swift
//  APIKitWithDecodableSample
//
//  Created by SuguruKishimoto on 6/19/17.
//  Copyright © 2017 SuguruKishimoto. All rights reserved.
//

import Foundation

struct Repository: GitHubAPIResponse {
    let id: Int
    let fullName: String
    let createdAt: Date
    
    private enum CodingKeys: String, CodingKey {
        case id
        case fullName = "full_name"
        case createdAt = "created_at"
    }
}
