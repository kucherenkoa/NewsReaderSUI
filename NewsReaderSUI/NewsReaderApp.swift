//
//  NewsReaderApp.swift
//  NewsReader
//
//  Created by Andrey Kucherenko on 15.09.2024.
//

import SwiftUI

@main
struct NewsReaderApp: App {
    @State var showSplash = true

    var body: some Scene {
        WindowGroup {
            if showSplash {
                SplashScreen().onAppear() {
                    startTimer()
                }
            } else {
                NewsListView()
            }
        }
    }

    private func startTimer() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            showSplash.toggle()
        }
    }
}
