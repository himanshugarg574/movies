//
//  NetworkService.swift
//  movieslog
//
//  Created by Himanshu Garg on 19/11/22.
//

import Foundation

let API_KEY = "38a73d59546aa378980a88b645f487fc"

class NetworkService {
    static func getMovies() async -> MoviewListModel? {
        guard let url = URL(string: "https://api.themoviedb.org/3/movie/popular?api_key=\(API_KEY)") else {
            print("Invalid URL")
            return nil
        }
        
        do {
            let (data, _) = try await URLSession.shared.data(for: URLRequest(url: url))
            if let decodedRespose = try? JSONDecoder().decode(MoviewListModel.self, from: data) {
                print(decodedRespose)
                return decodedRespose
            }
        } catch {
            print("Invalid data")
        }
        return nil
    }
}
