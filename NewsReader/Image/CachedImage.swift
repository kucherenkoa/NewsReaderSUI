//
//  CachedImage.swift
//  NewsReader
//
//  Created by Andrey Kucherenko on 19.09.2024.
//

import SwiftUI

struct CachedImage: View {
    @ObservedObject var model: ImageLoader

    init(url: String) {
        model = ImageLoader(url: url)
    }

    var body: some View {
        Image(uiImage: model.image)
            .resizable()
            .scaledToFill()
            .onAppear {
            model.load()
        }
    }
}

struct ThumbImage: View {
    @ObservedObject var model: ImageLoader
    @State var size: CGFloat = 100

    init(url: String) {
        model = ImageLoader(url: url)
    }

    var body: some View {
        Image(uiImage: model.image)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: size, height: size, alignment: .center)
            .clipped()
            .onAppear {
            model.load()
        }
    }
}

class ImageLoader: ObservableObject {
    @Published var image: UIImage = UIImage()

    var url: String = ""

    init(url: String) {
        self.url = url
    }

    func load() {
        ImageManager.sharedInstance.receiveImage(forKey: url) { image in
            DispatchQueue.main.async { [weak self] in
                self?.image = image
            }

        }
    }
}
