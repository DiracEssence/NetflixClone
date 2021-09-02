//
//  TopMoviePreview.swift
//  NetflixClone
//
//  Created by user193760 on 3/8/21.
//

import SwiftUI
import KingfisherSwiftUI

struct TopMoviePreview: View {
    
    func isLastCategory(_ cat: String) -> Bool {
        let numberOfCategories = movie.categories.count;
        if (numberOfCategories == 0) { return false }
        let idx = movie.categories.firstIndex(of: cat)
        return idx == (numberOfCategories - 1)
    }
    
    var movie: Movie
    var body: some View {
        ZStack {
            KFImage(movie.thumbnailURL)
                .resizable()
                .scaledToFill()
                .clipped()
            	
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    ForEach(movie.categories, id: \.self) {
                        category in
                        Text(category)
                            .font(.footnote)
                        if !isLastCategory(category) {
                            Image(systemName: "circle.fill")
                                .foregroundColor(.blue)
                                .font(.system(size: 3))
                        }
                    }
                    Spacer()
                }
                HStack {
                    Spacer()
                    SmallVerticalButton(text: "My List", isOnImage: "checkmark", isOffImage: "plus", isOn: true) {
                        print("tapped")
                    }
                    Spacer()
                    PlayButton(text: "Play", imageName: "play.fill") {
                        
                    }.frame(width: 120)
                    
                    Spacer()
                    SmallVerticalButton(text: "Info", isOnImage: "info.circle", isOffImage: "info.circle", isOn: true) {
                        print("tapped")
                    }
                    Spacer()
                }
            }
            .foregroundColor(.white)
            .font(.title2)
            .background(
                LinearGradient.blackOpacityGradient
                .padding(.top, 250)
            )
        }
    }
}

struct TopMoviePreview_Previews: PreviewProvider {
    static var previews: some View {
        TopMoviePreview(movie: exampleMovie)
    }
}
