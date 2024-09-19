//
//  NewsItemView.swift
//  NewsReader
//
//  Created by Andrey Kucherenko on 15.09.2024.
//

import SwiftUI

struct NewsItemRow: View {
    @State var newsItem: NewsItem

    var body: some View {
        HStack(alignment: .top) {
            ThumbImage(url: newsItem.urlToImage ?? "")
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
            VStack(alignment: .leading, spacing: 10) {
                Text(newsItem.title ?? "")
                    .lineLimit(2)
                    .textTitle()
                Text(newsItem.description ?? "")
                    .lineLimit(4)
                    .subTitle()
                Text(newsItem.dateString)
                    .lineLimit(1)
                    .smallTitle()
            }
        }
    }
}
