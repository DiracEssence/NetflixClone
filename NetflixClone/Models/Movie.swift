//
//  Movie.swift
//  NetflixClone
//
//  Created by user193760 on 2/25/21.
//

import Foundation

struct Movie: Identifiable {
    var id: String
    var name: String
    var thumbnailURL: URL
    var categories: [String]
    
    // fields for Movie detail view
    var year: Int
    var rating: String
    var seasons: Int?
    
    var episodes: [Episode]?
    
    var promotion: String?
    
    var numberOfSeasons: String {
        if let num = seasons {
            if num == 1 {
                return "1 season"
            } else {
                return "\(num) seasons"
            }
        }
        return ""
    }
}
