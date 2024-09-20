//
//  NewsListView.swift
//  NewsReader
//
//  Created by Andrey Kucherenko on 19.09.2024.
//

import SwiftUI

struct NewsListView: View {
    @ObservedObject var model = NewsListModel()
    
    var body: some View {
        NavigationStack {
            List(model.items) { item in
                NavigationLink(destination: NewsItemView(item: item)) {
                    NewsItemRow(newsItem: item)
                }
            }
            .refreshable {
                model.loadNews()
            }
            .onAppear() {
                model.loadNews()
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
