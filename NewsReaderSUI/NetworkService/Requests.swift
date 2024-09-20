//
//  Requests.swift
//  NewsReader
//
//  Created by Andrey Kucherenko on 19.09.2024.
//

import Foundation

enum Requests {
    case everything(query: String)
    case top
    
    var value: String {
        switch self {
            case .everything(let query):
                return "everything?q=\(query)"
            case .top:
                return "top-headlines?language=en"
        }
    }
}
