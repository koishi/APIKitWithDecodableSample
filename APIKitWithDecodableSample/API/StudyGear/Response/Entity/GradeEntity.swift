//
//  GradeEntity.swift
//  APIKitWithDecodableSample
//
//  Created by 大石弘一郎 on 2018/01/12.
//  Copyright © 2018年 SuguruKishimoto. All rights reserved.
//

struct GradeEntity : Codable {
    let id : String?
    let name : String?
    let nameKana : String?

    enum CodingKeys: String, CodingKey {
        case id
        case name
        case nameKana = "name_kana"
    }
}
