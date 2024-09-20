//
//  ErrorResponse.swift
//  NewsReader
//
//  Created by Andrey Kucherenko on 19.09.2024.
//

import Foundation


enum ErrorType {
    case auth, network, tech, other
}

class ErrorResponse : Error {
    var message: String = ""
    var type = ErrorType.other
    
    init(message: String) {
        self.message = message
    }
    
    init(type: ErrorType) {
        self.type = type
    }
}
