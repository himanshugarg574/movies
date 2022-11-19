//
//  MoviewListView.swift
//  movieslog
//
//  Created by Himanshu Garg on 19/11/22.
//

import SwiftUI

struct MoviewListView: View {
    @StateObject private var viewModel = MovieListViewModel()
    
    var body: some View {
        VStack {
            List(viewModel.movieCardList, id: \.id) { model in
                MovieCard(model: model)
            }
            .task {
                await viewModel.getMovies()
            }
        }
    }
}

struct MoviewListView_Previews: PreviewProvider {
    static var previews: some View {
        MoviewListView()
    }
}
