//
//  NewsList.swift
//  NewsReader
//
//  Created by Andrey Kucherenko on 15.09.2024.
//

// MARK: News list model
class NewsList: Codable,Identifiable {
    var status: String?
    var total: Int = 0
    var articles: [NewsItem]?
    
    enum CodingKeys : String, CodingKey {
        case total = "totalResults"
        case articles = "articles"
        case status = "status"
    }
}
