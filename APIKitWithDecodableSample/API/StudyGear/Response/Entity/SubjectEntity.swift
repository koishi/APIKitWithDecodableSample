//
//  SubjectEntity.swift
//  APIKitWithDecodableSample
//
//  Created by 大石弘一郎 on 2018/01/12.
//  Copyright © 2018年 SuguruKishimoto. All rights reserved.
//

struct SubjectEntity : Codable {
    let icon : String?
    let id : String?
    let name : String?
    let nameKana : String?

    enum CodingKeys: String, CodingKey {
        case icon = "icon"
        case id = "id"
        case name = "name"
        case nameKana = "name_kana"
    }
}
