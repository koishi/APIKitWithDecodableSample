//
//  TimeLineResponse.swift
//  APIKitWithDecodableSample
//
//  Created by 大石弘一郎 on 2018/01/09.
//  Copyright © 2018年 SuguruKishimoto. All rights reserved.
//

import Foundation

struct TimeLineResponse : StudyGearAPIResponse {
    let code : Int?
    let data : [TimeLineResponseDataEntity]?
    let message : String?
}

struct TimeLineResponseDataEntity : Codable {
    let createdAt : String?
    let messageType : String?
    let stamp : StampEntity?
    let text : String?
    let user : UserEntity?
    let userId : String?
    let userType : String?

    enum CodingKeys: String, CodingKey {
        case createdAt = "created_at"
        case messageType = "message_type"
        case stamp
        case text
        case user
        case userId = "user_id"
        case userType = "user_type"
    }
}
