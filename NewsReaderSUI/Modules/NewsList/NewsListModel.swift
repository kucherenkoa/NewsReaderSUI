//
//  NewsListModel.swift
//  NewsReader
//
//  Created by Andrey Kucherenko on 19.09.2024.
//

import Foundation
import SwiftUI
import Combine

class NewsListModel : ObservableObject {
    weak var service = NewsService.shared
    @Published var items: [NewsItem] = [NewsItem]()
    var subscriptions = Set<AnyCancellable>()
    
    @available(iOS 15.0, *)
    func loadNews() {
        Task {
            if let result =  await service?.loadNewsAsync() {
                switch result {
                    case .success(let data):
                        await self.perform {
                            self.items = [NewsItem]()
                            self.items.append(contentsOf: data.articles ?? [NewsItem]())
                        }

                    case .failure(let error):
                        print(error.localizedDescription)
                }
            }
            
        }
    }
    
    @available(iOS 15.0, *)
    @MainActor
    private func updateWithData(items:[NewsItem]) {
        self.items = [NewsItem]()
        self.items.append(contentsOf: items)
    }
    
    @available(iOS 15.0, *)
    @MainActor
    private func perform(action: @escaping()->Void) {
        action()
    }
}
