//
//  NewsItemView.swift
//  NewsReader
//
//  Created by Andrey Kucherenko on 19.09.2024.
//

import SwiftUI

struct NewsItemView: View {
    @State var item: NewsItem
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                CachedImage(url: item.urlToImage ?? "")
                Text(item.title ?? "").largeTitle()
                Text(item.dateString).smallTitle()
                Text(item.content ?? "").subTitle()
                Button {
                    UIApplication.shared.open(URL(string: item.url ?? "") ?? URL(fileURLWithPath: "htps:/ya.ru"))
                } label: {
                    Text("Show more").smallTitle()
                }
                Spacer()
            }.padding()
        }
    }
}
