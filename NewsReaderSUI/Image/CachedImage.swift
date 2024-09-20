//
//  CachedImage.swift
//  NewsReader
//
//  Created by Andrey Kucherenko on 19.09.2024.
//

import SwiftUI
import Kingfisher

struct CachedImage: View {
    @State var url: String = ""
    
    var body: some View {
        KFImage(URL(string: url))
            .placeholder({
                Color.gray.opacity(0.1)
            })
            .resizable()
            .aspectRatio(contentMode: .fill)
    }
}

struct ThumbImage: View {
    @State var size: CGFloat = 100
    @State var url: String = ""
    
    var body: some View {
        VStack {
            KFImage(URL(string: url))
                .placeholder({
                    Color.gray.opacity(0.1)
                })
                .resizable()
                .scaledToFit()
                .aspectRatio(contentMode: .fill)
                .frame(width: size, height: size, alignment: .center)
                .clipped()
            
        }
    }
}
