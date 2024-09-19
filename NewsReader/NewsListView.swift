//
//  NewsListView.swift
//  NewsReader
//
//  Created by Andrey Kucherenko on 19.09.2024.
//

import SwiftUI

struct NewsListView: View {
    @State var items = MockHelper.shared.mockItems

    var body: some View {
        NavigationStack {
            List(items) { item in
                NavigationLink(destination: NewsItemView(item: item)) {
                    NewsItemRow(newsItem: item)
                }
            }
            .refreshable {

            }
            .navigationBarTitle("News", displayMode: .inline)
            .navigationBarItems(trailing: NavigationLink(destination: {
                SearchView()
            }, label: {
                Image(systemName: "magnifyingglass")
            })
            )
        }
    }
}
