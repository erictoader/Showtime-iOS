//
//  MovieModel.swift
//  Showtime
//
//  Created by Eric Toader on 11.09.2023.
//

import Foundation

struct MovieModel : AssetModel {
    let id = UUID()
    let posterUrl: URL?
}
