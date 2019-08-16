//
//  APIRequest.swift
//  FetchingData
//
//  Created by Tien Le P. on 8/15/19.
//  Copyright © 2019 Tien Le P. All rights reserved.
//

import Foundation

extension APIManager {
    //MARK:- Request with url String
    func request(urlString: String, completion: @escaping (APIResult) -> Void) {
        guard let url = URL(string: urlString) else { return }
        let configuration = URLSessionConfiguration.ephemeral
        configuration.waitsForConnectivity = true
        let session = URLSession.shared
        let dataTask = session.dataTask(with: url) { (data, responce, error) in
            DispatchQueue.main.async {
                if let error = error {
                    completion(.failure(.error(error.localizedDescription)))
                } else {
                    if let data = data {
                        completion(.success(data))
                    }
                }
            }
        }
        dataTask.resume()
    }
    
    //MARK:- Request with URL
    func request(url: URL, completion: @escaping (APIResult) -> Void) {
        let configuration = URLSessionConfiguration.ephemeral
        configuration.waitsForConnectivity = true
        let session = URLSession.shared
        let dataTask = session.dataTask(with: url) { (data, responce, error) in
            DispatchQueue.main.async {
                if let error = error {
                    completion(.failure(.error(error.localizedDescription)))
                } else {
                    if let data = data {
                        completion(.success(data))
                    }
                }
            }
        }
        dataTask.resume()
    }
}
