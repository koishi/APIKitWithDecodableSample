//
//  ChannelEntity.swift
//  APIKitWithDecodableSample
//
//  Created by 大石弘一郎 on 2018/01/12.
//  Copyright © 2018年 SuguruKishimoto. All rights reserved.
//

struct ChannelEntity : Codable {
    let adsenseImage : AdsenseImageEntity?
    let adsenseMovie : AdsenseMovieEntity?
    let company : CompanyEntity?
    let id : String?
    let link : String?
    let point : String?
    let text : String?
    let title : String?
    let updatedAt : String?
    let url : String?

    enum CodingKeys: String, CodingKey {
        case adsenseImage
        case adsenseMovie
        case company
        case id
        case link
        case point
        case text
        case title
        case updatedAt = "updated_at"
        case url
    }
}
