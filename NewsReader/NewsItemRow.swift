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
            Color
                .green
                .opacity(0.1)
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
            VStack(alignment: .leading) {
                Text(newsItem.title ?? "")
                    .font(.title)
                    .lineLimit(2)
                Text(newsItem.description ?? "")
                    .font(.title3)
                    .lineLimit(4)
                Text(newsItem.dateString)
                    .font(.subheadline)
                    .lineLimit(1)
            }

        }
    }
}

//#Preview {
//    NewsItemRow(newsItem: items)
//}
