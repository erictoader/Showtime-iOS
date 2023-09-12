//
//  RequestManager.swift
//  Showtime
//
//  Created by Eric Toader on 11.09.2023.
//

import Foundation

struct NetworkManager {
    
    func executeRequest<Data: Decodable> (path: String, completion: @escaping (Result<Data, Error>) -> Void) {
        if let url = URL(string: path) {
            let urlRequest = URLRequest(url: url)
            URLSession.shared.dataTask(with: urlRequest) { data, urlResponse, requestError in
                if let requestError = requestError { completion(.failure(requestError)) }
                
                guard let data = data else {
                    completion(.failure(NetworkError.invalidResponse(urlResponse)))
                    return
                }
                
                do {
                    let object = try JSONDecoder().decode(Data.self, from: data)
                    completion(.success(object))
                } catch {
                    completion(.failure(error))
                }
            }
        } else {
            completion(.failure(NetworkError.urlError(path)))
        }
    }
}
