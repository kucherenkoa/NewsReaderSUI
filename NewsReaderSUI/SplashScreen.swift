//
//  SpashScreen.swift
//  NewsReader
//
//  Created by Andrey Kucherenko on 15.09.2024.
//

import SwiftUI

struct SplashScreen: View {
    var body: some View {
        ZStack {
            Color
                .gray
                .opacity(0.3)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("N E W S")
                    .frame(width: 100)
                    .padding(.all)
                    .colorInvert()
                    .font(.title)
                    .background(.blue)
                Text("R E A D E R")
                    .frame(width: 100)
                    .padding(.all)
                    .fontWeight(.light)
                    .font(.title3)
                    .foregroundColor(.blue)
                    .background(.white)
            }
            .background()
        }
    }
}

#Preview {
    SplashScreen()
}
