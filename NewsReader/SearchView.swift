//
//  SearchView.swift
//  NewsReader
//
//  Created by Andrey Kucherenko on 19.09.2024.
//

import SwiftUI

struct SearchView: View {
    @ObservedObject var model =  SearchModel()
    @State var text: String = ""

    var body: some View {
        NavigationStack {
            List(model.foundItems) { item in
                NavigationLink(destination: NewsItemView(item: item)) {
                    NewsItemRow(newsItem: item)
                }
            }
            .navigationBarTitle("Search", displayMode: .inline)
            .searchable(text: self.$text)
            .onChange(of: text) { _, newValue in
                self.model.search(query: newValue)
            }
        }
    }
}

class SearchModel: ObservableObject {
    var cachedItems =  MockHelper.shared.mockItems
    @Published var foundItems = [NewsItem]()

    func search(query: String) {
        if query.count >= 3 {
            foundItems = cachedItems.filter {
                $0.title?.lowercased().contains(query.lowercased()) == true
            }
        }
    }
}
