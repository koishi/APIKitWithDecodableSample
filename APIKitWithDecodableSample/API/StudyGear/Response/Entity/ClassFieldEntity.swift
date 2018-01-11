//
//  ClassFieldEntity.swift
//  APIKitWithDecodableSample
//
//  Created by 大石弘一郎 on 2018/01/12.
//  Copyright © 2018年 SuguruKishimoto. All rights reserved.
//

import Foundation

struct ClassFieldEntity : Codable {
    let drillName : String?
    let id : String?
    let movie : AdsenseMovieEntity?
    let name : String?
    let question : [QuestionEntity]?
    let sortOrder : String?

    enum CodingKeys: String, CodingKey {
        case drillName = "drill_name"
        case id
        case movie
        case name
        case question
        case sortOrder = "sort_order"
    }
}
