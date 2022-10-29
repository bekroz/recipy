//
//  CardImage.swift
//  recipe
//
//  Created by BekRoz on 29/10/22.
//

import SwiftUI

struct CardImage: View {
    var url: String
    var text: String
    
    var body: some View {
        AsyncImage(url: URL(string: url)) {
            image in image
                .resizable()
                .aspectRatio(contentMode: .fill)
                .overlay(alignment: .bottom) {
                    ImageText(text: text)
                }
        } placeholder: {
            ImagePlaceholder()
        }
    }
}

struct ImageText: View {
    var text: String
    var body: some View {
        Text(text)
            .font(.headline)
            .shadow(color: .black, radius: 3, x: 0, y:0)
            .foregroundColor(.white)
            .frame(maxWidth: 136)
            .padding()
    }
}

struct ImagePlaceholder: View {
    var body: some View {
        Image(systemName: "photo")
            .resizable()
            .scaledToFit()
            .frame(width: 40, height: 40, alignment: .center)
            .foregroundColor(.white.opacity(0.7))
            .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct CardImage_Previews: PreviewProvider {
    var recipe: Recipe
    static var previews: some View {
        CardImage(url: "", text: "")
    }
}


