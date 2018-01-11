//
//  AdsenseMovieEntity.swift
//  APIKitWithDecodableSample
//
//  Created by 大石弘一郎 on 2018/01/12.
//  Copyright © 2018年 SuguruKishimoto. All rights reserved.
//

struct AdsenseMovieEntity : Codable {
    let id : String?
    let name : String?
    let thumbnailLarge : String?
    let thumbnailMidium : String?
    let thumbnailSmall : String?
    let url : String?

    enum CodingKeys: String, CodingKey {
        case id
        case name
        case thumbnailLarge = "thumbnail_large"
        case thumbnailMidium = "thumbnail_midium"
        case thumbnailSmall = "thumbnail_small"
        case url
    }
}
