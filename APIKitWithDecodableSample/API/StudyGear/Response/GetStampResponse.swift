//
//  GetStampResponse.swift
//  APIKitWithDecodableSample
//
//  Created by 大石弘一郎 on 2018/01/08.
//  Copyright © 2018年 SuguruKishimoto. All rights reserved.
//

import Foundation

class GetStampResponse: StudyGearAPIResponse  {
    let code : Int?
    let data : GetStampResponseDataEntity?
    let message : String?
}

struct GetStampResponseDataEntity : Codable {
    let free : [StampEntity]?
    let toll : [StampEntity]?
}
