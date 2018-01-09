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
        case text = "text"
        case user
        case userId = "user_id"
        case userType = "user_type"
    }
}

struct UserEntity : Codable {
    let family : FamilyEntity?
    let grade : GradeEntity?
    let iconUrl : String?
    let id : String?
    let loginName : String?
    let nickname : String?
    let relationType : String?
    let role : Int?
    let school : SchoolEntity?

    enum CodingKeys: String, CodingKey {
        case family
        case grade
        case iconUrl = "icon_url"
        case id = "id"
        case loginName = "login_name"
        case nickname = "nickname"
        case relationType = "relation_type"
        case role = "role"
        case school
    }
}

struct SchoolEntity : Codable {
    let city : CityEntity?
    let id : String?
    let name : String?
}

struct CityEntity : Codable {
    let id : String?
    let name : String?
    let prefecture : PrefectureEntity?

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case prefecture
    }
}

struct PrefectureEntity : Codable {
    let id : String?
    let name : String?
}

struct FamilyEntity : Codable {
    let email : String?
    let id : String?
    let passcode : String?
    let point : String?
    let premiumEndDate : String?
    let zipcode : String?

    enum CodingKeys: String, CodingKey {
        case email = "email"
        case id = "id"
        case passcode = "passcode"
        case point = "point"
        case premiumEndDate = "premium_end_date"
        case zipcode = "zipcode"
    }
}
