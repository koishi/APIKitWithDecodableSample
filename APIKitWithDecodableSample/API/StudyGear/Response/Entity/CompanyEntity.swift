//
//  CompanyEntity.swift
//  APIKitWithDecodableSample
//
//  Created by 大石弘一郎 on 2018/01/12.
//  Copyright © 2018年 SuguruKishimoto. All rights reserved.
//

struct CompanyEntity : Codable {
    let iconUrl : String?
    let id : String?
    let name : String?
    let point : String?
    let url : String?

    enum CodingKeys: String, CodingKey {
        case iconUrl = "icon_url"
        case id
        case name
        case point
        case url
    }
}
