//
//  MovieCard.swift
//  movieslog
//
//  Created by Himanshu Garg on 19/11/22.
//

import Foundation
import SwiftUI

struct MovieCard: View {
    let model: MovieCardModel
    
    @State private var showingSheet = false
    
    var body: some View {
        VStack{
            AsyncImage(url: model.imageUrl, scale: 4.6)
//            Image(systemName: "heart")
            HStack {
                VStack(alignment: .leading) {
                    Text(model.title)
                    Text(model.rating)
                    Text(model.playlist)
                }
                Spacer()
                Button(action: {
                    showingSheet.toggle()
                }) {
                    Image(systemName: "star")
                }.sheet(isPresented: $showingSheet) {
                    List {
                        Text("Playlist 1")
                        Text("Playlist 2")
                        Text("Playlist 3")
                        Button("Add new") { }
                    }
                .presentationDetents([.medium])
                }

            }
            .padding()
        }
        .padding(EdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 8))
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        MovieCard(model: MovieCardModel(title: "Test", rating: "8.9", playlist: "Playlist 1", imageUrl: URL(string: "https://image.tmdb.org/t/p/w500/p60VSQL7usdxztIGokJPpHmKWdU.jpg"), id: 1))
    }
}

