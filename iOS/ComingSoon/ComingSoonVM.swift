//
//  ComingSoonVM.swift
//  BuildNetflix
//
//  Created by Nikita Thomas on 8/10/20.
//

import Foundation

class ComingSoonVM: ObservableObject {
    @Published var movies: [Movie] = []
    
    init() {
        self.movies = generateMovies(20)
    }
}
