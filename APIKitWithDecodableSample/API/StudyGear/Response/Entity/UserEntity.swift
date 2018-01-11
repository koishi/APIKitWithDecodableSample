//
//  UserEntity.swift
//  APIKitWithDecodableSample
//
//  Created by 大石弘一郎 on 2018/01/12.
//  Copyright © 2018年 SuguruKishimoto. All rights reserved.
//

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
        case id
        case loginName = "login_name"
        case nickname
        case relationType = "relation_type"
        case role
        case school
    }
}
