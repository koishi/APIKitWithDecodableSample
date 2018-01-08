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

    struct SearchRepositories: GitHubRequest {
        typealias Response = SearchRepositoriesResponse

        let method: HTTPMethod = .get
        let path: String = "/search/repositories"
        var parameters: Any? {
            return ["q": query, "page": 1]
        }

        let query: String
    }

    struct MypageTop: StudyGearRequest {
        typealias Response = MypageTopResponse

        let method: HTTPMethod = .get
        let path: String = "/mypage/top/"
        var parameters: Any? {
            return ["user_id": userId]
        }
        let userId: String
    }
}
