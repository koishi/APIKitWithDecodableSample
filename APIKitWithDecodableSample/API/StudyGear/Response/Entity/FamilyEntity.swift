//
//  FamilyEntity.swift
//  APIKitWithDecodableSample
//
//  Created by 大石弘一郎 on 2018/01/12.
//  Copyright © 2018年 SuguruKishimoto. All rights reserved.
//

struct FamilyEntity : Codable {
    let email : String?
    let id : String?
    let passcode : String?
    let point : String?
    let premiumEndDate : String?
    let zipcode : String?

    enum CodingKeys: String, CodingKey {
        case email
        case id
        case passcode
        case point
        case premiumEndDate = "premium_end_date"
        case zipcode
    }
}
