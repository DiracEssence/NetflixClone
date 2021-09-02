//
//  Episode.swift
//  NetflixClone
//
//  Created by user193760 on 3/22/21.
//

import Foundation

struct Episode: Identifiable {
    var id = UUID().uuidString
    var name: String
    var season: Int
    var thumbnailImageURLString: String
    var description: String
    var minutes: Int
    
    var thumbnailImageURL: URL {
        return URL(string: thumbnailImageURLString)!
    }
}
