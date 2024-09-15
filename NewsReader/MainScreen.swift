//
//  MainScreen.swift
//  NewsReader
//
//  Created by Andrey Kucherenko on 15.09.2024.
//

import SwiftUI

struct MainScreen: View {
    @State var items = MockHelper.shared.mockItems

    var body: some View {
        List(items) { item in
            NewsItemRow(newsItem: item)
        }
    }
}

#Preview {
    MainScreen()
}
