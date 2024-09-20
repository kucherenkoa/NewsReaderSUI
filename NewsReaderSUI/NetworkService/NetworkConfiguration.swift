//
//  NetworkConfiguration.swift
//  NewsReader
//
//  Created by Andrey Kucherenko on 19.09.2024.
//

import Foundation

class NetworkConfiguration {
    
    private let apiUrl = "https://newsapi.org/v2/"
    private let apiKey = "78d11b972d4e44a6a8cb8f4be28ab907"
    
    func getHeaders() -> [String: String] {
        return ["X-Api-Key":apiKey]
    }
    
    func getBaseUrl() -> String {
        return apiUrl
    }
    
}
