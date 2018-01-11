//
//  SchoolEntity.swift
//  APIKitWithDecodableSample
//
//  Created by 大石弘一郎 on 2018/01/12.
//  Copyright © 2018年 SuguruKishimoto. All rights reserved.
//

struct SchoolEntity : Codable {
    let city : CityEntity?
    let id : String?
    let name : String?
}
