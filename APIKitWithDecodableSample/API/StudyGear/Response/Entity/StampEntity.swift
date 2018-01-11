//
//  StampEntity.swift
//  APIKitWithDecodableSample
//
//  Created by 大石弘一郎 on 2018/01/12.
//  Copyright © 2018年 SuguruKishimoto. All rights reserved.
//

struct StampEntity : Codable {
    let id : String?
    let image : String?
    let sortOrder : String?
    let stampSetId : String?

    enum CodingKeys: String, CodingKey {
        case id
        case image
        case sortOrder = "sort_order"
        case stampSetId = "stamp_set_id"
    }
}
