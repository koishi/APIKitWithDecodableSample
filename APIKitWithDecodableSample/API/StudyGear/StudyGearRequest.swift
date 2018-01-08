//
//  StudyGearRequest.swift
//  APIKitWithDecodableSample
//
//  Created by 大石弘一郎 on 2018/01/08.
//  Copyright © 2018年 SuguruKishimoto. All rights reserved.
//

import Foundation
import APIKit

protocol StudyGearRequest: Request where Response: Decodable {
    var decoder: JSONDecoder { get }
}

extension StudyGearRequest {
    var baseURL: URL {
        return URL(string: "http://13.230.75.160:4567/v1")!
    }

    var dataParser: DataParser {
        return DecodableDataParser()
    }

    var decoder: JSONDecoder {
        return JSONDecoder()
    }

    func response(from object: Any, urlResponse: HTTPURLResponse) throws -> Response {
        guard let data = object as? Data else {
            throw ResponseError.unexpectedObject(object)
        }
        return try decoder.decode(Response.self, from: data)
    }
}

extension StudyGearRequest where Response: CustomDecodingStrategy {
    var decoder: JSONDecoder {
        let decoder = JSONDecoder()
        let strategies = Response.decodingStrategies
        decoder.dateDecodingStrategy = strategies.dateDecodingStrategy
        decoder.dataDecodingStrategy = strategies.dataDecodingStrategy
        decoder.nonConformingFloatDecodingStrategy = strategies.nonConformingFloatDecodingStrategy
        return decoder
    }
}
