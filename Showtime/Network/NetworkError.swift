//
//  Error.swift
//  Showtime
//
//  Created by Eric Toader on 11.09.2023.
//

import Foundation

enum NetworkError: Error {
    case urlError(_ urlPath: String)
    case invalidResponse(_ response: URLResponse?)
}
