//
//  AdsenseImageEntity.swift
//  APIKitWithDecodableSample
//
//  Created by 大石弘一郎 on 2018/01/12.
//  Copyright © 2018年 SuguruKishimoto. All rights reserved.
//

struct AdsenseImageEntity : Codable {
    let altText : String?
    let id : String?
    let url : String?

    enum CodingKeys: String, CodingKey {
        case altText = "alt_text"
        case id
        case url
    }
}
