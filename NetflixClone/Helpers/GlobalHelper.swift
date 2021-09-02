//
//  GlobalHelper.swift
//  NetflixClone
//
//  Created by user193760 on 2/25/21.
//

import Foundation

let exampleMovie: Movie = Movie(id: UUID().uuidString, name: "DARK", thumbnailURL: URL(string: "https://picsum.photos/200/300")!, categories: ["Fear", "Mistery"], year: 2020, rating: "TV-MA", seasons: 1)
let exampleMovie2: Movie = Movie(id: UUID().uuidString, name: "SHREK", thumbnailURL: URL(string: "https://picsum.photos/200/301")!, categories: ["Jokes", "Laughts"], year: 2020, rating: "TV-MA", seasons: 2, promotion: "Watch Season 3 Now")
let exampleMovie3: Movie = Movie(id: UUID().uuidString, name: "IM LEGEND", thumbnailURL: URL(string: "https://picsum.photos/200/302")!, categories: ["Adventure"], year: 2020, rating: "TV-MA", seasons: 3)
let exampleMovie4: Movie = Movie(id: UUID().uuidString, name: "INTERESTELLAR", thumbnailURL: URL(string: "https://picsum.photos/200/303")!, categories: ["Nostalgia", "Adventure"], year: 2020, rating: "TV-MA", seasons: 4)
let exampleMovie5: Movie = Movie(id: UUID().uuidString, name: "4 FANTASTICS", thumbnailURL: URL(string: "https://picsum.photos/200/304")!, categories: ["Adventure", "Fiction", "Action"], year: 2020, rating: "TV-MA", seasons: 5)
let exampleMovie6: Movie = Movie(id: UUID().uuidString, name: "IRONMAN", thumbnailURL: URL(string: "https://picsum.photos/200/305")!, categories: ["Adventure", "Fiction", "Action"], year: 2020, rating: "TV-MA", seasons: 6)
let exampleMovie7: Movie = Movie(id: UUID().uuidString, name: "END GAME", thumbnailURL: URL(string: "https://picsum.photos/200/306")!, categories: ["Adventure", "Fiction", "Action"], year: 2020, rating: "TV-MA", seasons: 7)
let exampleMovie8: Movie = Movie(id: UUID().uuidString, name: "BEAST", thumbnailURL: URL(string: "https://picsum.photos/200/307")!, categories: ["Adventure", "Fiction", "Action"], year: 2020, rating: "TV-MA", seasons: 8)
let exampleMovies: [Movie] = [exampleMovie, exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6, exampleMovie7, exampleMovie8]
