//
//  AssetModel.swift
//  Showtime
//
//  Created by Eric Toader on 11.09.2023.
//

import Foundation

protocol AssetModel: Identifiable & Codable {
    var id: UUID { get }
    var posterUrl: URL? { get }
}
