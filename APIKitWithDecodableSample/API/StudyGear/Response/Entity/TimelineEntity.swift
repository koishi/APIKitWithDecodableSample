//
//  TimelineEntity.swift
//  APIKitWithDecodableSample
//
//  Created by 大石弘一郎 on 2018/01/12.
//  Copyright © 2018年 SuguruKishimoto. All rights reserved.
//

import Foundation

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
