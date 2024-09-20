//
//  String+Date.swift
//  NewsReader
//
//  Created by Andrey Kucherenko on 19.09.2024.
//

import Foundation

extension Date {
    func formatToString(_ format: String) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        let locale = Calendar.current.locale
        formatter.locale = locale
        
        return formatter.string(from: self)
    }
}
