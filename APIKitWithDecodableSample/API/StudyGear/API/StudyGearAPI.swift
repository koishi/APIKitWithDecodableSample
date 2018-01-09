//
//  StudyGearAPI.swift
//  APIKitWithDecodableSample
//
//  Created by 大石弘一郎 on 2018/01/08.
//  Copyright © 2018年 SuguruKishimoto. All rights reserved.
//

import Foundation
import APIKit

final class StudyGearAPI {
    private init() {}

    //    学年リスト取得
    struct GetGradeList: StudyGearRequest {
        typealias Response = GetGradeListResponse
        let method: HTTPMethod = .get
        let path: String = "/share/get_grade_list"
    }

    struct MypageTop: StudyGearRequest {
        typealias Response = MypageTopResponseEntity

        let method: HTTPMethod = .get
        let path: String = "/mypage/top/"
        var parameters: Any? {
            return ["user_id": userId]
        }
        let userId: String
    }

    struct GetStamp: StudyGearRequest {
        typealias Response = GetStampResponse
        let method: HTTPMethod = .get
        let path: String = "/stamp/get_stamp/"
    }

}