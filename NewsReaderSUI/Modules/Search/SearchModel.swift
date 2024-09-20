//
//  SearchModel.swift
//  NewsReader
//
//  Created by Andrey Kucherenko on 19.09.2024.
//

import Foundation
import SwiftUI
import Combine

class SearchModel: ObservableObject {
    weak var service = NewsService.shared
    @Published var foundItems = [NewsItem]()
    var subscriptions = Set<AnyCancellable>()

    func search(query: String) {
        if query.count > 2 {
            self.searchQuery(query: query)
        }
    }

    private func searchQuery(query: String) {
        _ = service?.searchNewsPublisher(query: query).sink(receiveCompletion: { completion in
            switch completion {
                case .failure(let error):
                    print(error.localizedDescription)
                case .finished:
                    print("finished")
            }
        }, receiveValue: { list in
            self.foundItems = [NewsItem]()
            self.foundItems.append(contentsOf: list.articles ?? [NewsItem]())
        }).store(in: &subscriptions)
    }
}
