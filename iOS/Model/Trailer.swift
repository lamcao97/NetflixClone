//
//  Trailer.swift
//  iOS
//
//  Created by Nikita Thomas on 7/24/20.
//

import Foundation

struct Trailer: Identifiable, Hashable {
    var id: String = UUID().uuidString
    var name: String
    var videoURL: URL
    var thumbnailImageURL: URL
}
