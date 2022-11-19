//
//  MovieCardModel.swift
//  Movies
//
//  Created by Himanshu Garg on 19/11/22.
//

import Foundation

struct MovieCardModel {
    let title: String
    let rating: String
    let playlist: String
    let imageUrl: URL?
    let id: Int
    
    init(title: String, rating: String, playlist: String, imageUrl: URL?, id: Int) {
        self.title = title
        self.rating = rating
        self.playlist = playlist
        self.imageUrl = imageUrl
        self.id = id
    }
}
