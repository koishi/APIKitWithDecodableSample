//
//  GetStampResponse.swift
//  APIKitWithDecodableSample
//
//  Created by 大石弘一郎 on 2018/01/08.
//  Copyright © 2018年 SuguruKishimoto. All rights reserved.
//

import Foundation

class GetStampResponse: Codable, CustomDecodingStrategy  {

    let code : Int?
    let data : GetStampResponseDataEntity?
    let message : String?

//    enum CodingKeys: String, CodingKey {
//        case code = "code"
//        case data
//        case message = "message"
//    }
    static var decodingStrategies: Strategies {
        return Repository.decodingStrategies
    }
}

struct GetStampResponseDataEntity : Codable {
    let free : [StampEntity]?
    let toll : [StampEntity]?
//    enum CodingKeys: String, CodingKey {
//        case free = "free"
//        case toll = "toll"
//    }
//    init(from decoder: Decoder) throws {
//        let values = try decoder.container(keyedBy: CodingKeys.self)
//        free = try values.decodeIfPresent([StampEntity].self, forKey: .free)
//        toll = try values.decodeIfPresent([StampEntity].self, forKey: .toll)
//    }
}

struct StampEntity : Codable {

    let id : Int?
    let image : String?
    let sortOrder : Int?
    let stampSetId : Int?

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case image = "image"
        case sortOrder = "sort_order"
        case stampSetId = "stamp_set_id"
    }

}
