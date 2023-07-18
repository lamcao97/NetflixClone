//
//  PreviewVM.swift
//  iOS
//
//  Created by Nikita Thomas on 11/7/20.
//

import Foundation

class PreviewVM: ObservableObject {
    
    var movie: Movie
    
    init(movie: Movie) {
        self.movie = movie
    }
    
}
