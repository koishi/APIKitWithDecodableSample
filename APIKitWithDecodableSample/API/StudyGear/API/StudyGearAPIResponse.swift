//
//  StudyGearAPIResponse.swift
//  APIKitWithDecodableSample
//
//  Created by 大石弘一郎 on 2018/01/09.
//  Copyright © 2018年 SuguruKishimoto. All rights reserved.
//

import Foundation

protocol StudyGearAPIResponse:Decodable, CustomDecodingStrategy {
}

extension StudyGearAPIResponse {
    static var decodingStrategies: Strategies {
        return (.iso8601, .base64, .throw)
    }
}
