//
//  GetGradeListResponse.swift
//  APIKitWithDecodableSample
//
//  Created by 大石弘一郎 on 2018/01/08.
//  Copyright © 2018年 SuguruKishimoto. All rights reserved.
//

import Foundation

struct GetGradeListResponse : StudyGearAPIResponse {
    let code : Int?
    let grades : [GradeEntity]?
    let message : String?
}
