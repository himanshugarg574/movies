//
//  MoviewListModel.swift
//  movieslog
//
//  Created by Himanshu Garg on 19/11/22.
//

import Foundation

struct MoviewListModel: Decodable {
    var results: [SingleMovieResponse] 
}

struct SingleMovieResponse: Decodable {
    var posterPath: String?
    var id: Int
    var title: String
    var voteAverage: Float
    
    enum CodingKeys: String, CodingKey {
        case posterPath = "poster_path"
        case id
        case title
        case voteAverage = "vote_average"
    }
}
