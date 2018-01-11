//
//  CityEntity.swift
//  APIKitWithDecodableSample
//
//  Created by 大石弘一郎 on 2018/01/12.
//  Copyright © 2018年 SuguruKishimoto. All rights reserved.
//

struct CityEntity : Codable {
    let id : String?
    let name : String?
    let prefecture : PrefectureEntity?
}
