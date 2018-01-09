//
//  MypageTopResponse.swift
//  APIKitWithDecodableSample
//
//  Created by 大石弘一郎 on 2018/01/08.
//  Copyright © 2018年 SuguruKishimoto. All rights reserved.
//

import Foundation

struct MypageTopResponseEntity: StudyGearAPIResponse {
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

struct TimelineEntity : Codable {
    let channelName : String?
    let classField : ClassFieldEntity?
    let grade : GradeEntity?
    let iconUrl : String?
    let lastVisitedAt : String?
    let movieUrl : String?
    let reportCreateAt : String?
    let reportCreateMonth : String?
    let reportPostAt : String?
    let subject : SubjectEntity?
    let text : String?
    let thumbnailSmall : String?
    let timelineType : String?
    let title : String?

    enum CodingKeys: String, CodingKey {
        case channelName = "channel_name"
        case classField
        case grade
        case iconUrl = "icon_url"
        case lastVisitedAt = "last_visited_at"
        case movieUrl = "movie_url"
        case reportCreateAt = "report_create_at"
        case reportCreateMonth = "report_create_month"
        case reportPostAt = "report_post_at"
        case subject
        case text
        case thumbnailSmall = "thumbnail_small"
        case timelineType = "timeline_type"
        case title
    }
}

struct SubjectEntity : Codable {
    let icon : String?
    let id : String?
    let name : String?
    let nameKana : String?

    enum CodingKeys: String, CodingKey {
        case icon = "icon"
        case id = "id"
        case name = "name"
        case nameKana = "name_kana"
    }

}

struct GradeEntity : Codable {
    let id : String?
    let name : String?
    let nameKana : String?

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case nameKana = "name_kana"
    }

}

struct ClassFieldEntity : Codable {
    let drillName : String?
    let id : String?
    let movie : AdsenseMovieEntity?
    let name : String?
    let question : [QuestionEntity]?
    let sortOrder : String?

    enum CodingKeys: String, CodingKey {
        case drillName = "drill_name"
        case id = "id"
        case movie
        case name = "name"
        case question = "question"
        case sortOrder = "sort_order"
    }
}

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
        case answer = "answer"
        case answer1 = "answer1"
        case answer2 = "answer2"
        case answer3 = "answer3"
        case answer4 = "answer4"
        case explanation = "explanation"
        case id = "id"
        case name = "name"
        case score = "score"
        case sortOrder = "sort_order"
        case statement = "statement"
        case thumbnail = "thumbnail"
    }
}

struct ChannelEntity : Codable {
    let adsenseImage : AdsenseImageEntity?
    let adsenseMovie : AdsenseMovieEntity?
    let company : CompanyEntity?
    let id : String?
    let link : String?
    let point : String?
    let text : String?
    let title : String?
    let updatedAt : String?
    let url : String?

    enum CodingKeys: String, CodingKey {
        case adsenseImage
        case adsenseMovie
        case company
        case id = "id"
        case link = "link"
        case point = "point"
        case text = "text"
        case title = "title"
        case updatedAt = "updated_at"
        case url = "url"
    }

}

struct CompanyEntity : Codable {
    let iconUrl : String?
    let id : String?
    let name : String?
    let point : String?
    let url : String?

    enum CodingKeys: String, CodingKey {
        case iconUrl = "icon_url"
        case id = "id"
        case name = "name"
        case point = "point"
        case url = "url"
    }
}

struct AdsenseMovieEntity : Codable {
    let id : String?
    let name : String?
    let thumbnailLarge : String?
    let thumbnailMidium : String?
    let thumbnailSmall : String?
    let url : String?

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case thumbnailLarge = "thumbnail_large"
        case thumbnailMidium = "thumbnail_midium"
        case thumbnailSmall = "thumbnail_small"
        case url = "url"
    }

}

struct AdsenseImageEntity : Codable {
    let altText : String?
    let id : String?
    let url : String?

    enum CodingKeys: String, CodingKey {
        case altText = "alt_text"
        case id = "id"
        case url = "url"
    }

}
