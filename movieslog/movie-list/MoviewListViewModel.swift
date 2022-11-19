//
//  MoviewListViewModel.swift
//  movieslog
//
//  Created by Himanshu Garg on 19/11/22.
//

import Foundation

extension MoviewListView {
    
    @MainActor class MovieListViewModel: ObservableObject {
        @Published var movieCardList = [MovieCardModel]()
        
        var posterBasePath: String {
            "https://image.tmdb.org/t/p/w500"
        }
        
        func getMovies() async {
            guard let moviesList = await NetworkService.getMovies() else {
                return
            }
            movieCardList = moviesList.results.map {
                MovieCardModel(title: $0.title, 
                               rating: String(format: "%.1f", $0.voteAverage), 
                               playlist: "Playlist 1", 
                               imageUrl: URL(string: posterBasePath + ($0.posterPath ?? "/p60VSQL7usdxztIGokJPpHmKWdU.jpg")),
                               id: $0.id
                )
            }
        }
    }
}
