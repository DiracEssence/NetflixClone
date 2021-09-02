//
//  HomeViewModel.swift
//  NetflixClone
//
//  Created by user193760 on 3/1/21.
//

import Foundation

class HomeViewModel : ObservableObject {
    @Published var movies: [String: [Movie]] = [:]
    
    public var allCategories : [String] {
        return movies.keys.map { String($0) }
    }
    
    public func getMovies(PerCategory category: String) -> [Movie] {
        return movies[category] ?? []
    }
    
    init() {
        setupMovies()
    }
    
    func setupMovies() -> Void {
        movies["Trending now"] = exampleMovies.shuffled()
        movies["Comedy"] = exampleMovies.shuffled()
        movies["Action"] = exampleMovies.shuffled()
        movies["Screams"] = exampleMovies.shuffled()
        movies["Screams"] = exampleMovies.shuffled()
    }
}
