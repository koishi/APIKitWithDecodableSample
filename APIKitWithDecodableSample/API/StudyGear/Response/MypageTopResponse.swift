//
//  MypageTopResponse.swift
//  APIKitWithDecodableSample
//
//  Created by 大石弘一郎 on 2018/01/08.
//  Copyright © 2018年 SuguruKishimoto. All rights reserved.
//

import Foundation

struct MypageTopResponse: StudyGearAPIResponse {
    let code : Int?
    let data : MypageTopResponseDataEntity?
    let message : String?
    static var decodingStrategies: Strategies {
        return Repository.decodingStrategies
    }
}

struct MypageTopResponseDataEntity : Codable {
    let channels : [ChannelEntity]?
    let point : String?
    let timelines : [TimelineEntity]?
}
