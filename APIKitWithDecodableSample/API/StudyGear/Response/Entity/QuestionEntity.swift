//
//  QuestionEntity.swift
//  APIKitWithDecodableSample
//
//  Created by 大石弘一郎 on 2018/01/12.
//  Copyright © 2018年 SuguruKishimoto. All rights reserved.
//

struct QuestionEntity : Codable {
    let answer : String?
    let answer1 : String?
    let answer2 : String?
    let answer3 : String?
    let answer4 : String?
    let explanation : String?
    let id : String?
    let name : String?
    let score : String?
    let sortOrder : String?
    let statement : String?
    let thumbnail : String?

    enum CodingKeys: String, CodingKey {
        case answer
        case answer1
        case answer2
        case answer3
        case answer4
        case explanation
        case id
        case name
        case score
        case sortOrder = "sort_order"
        case statement
        case thumbnail
    }
}
