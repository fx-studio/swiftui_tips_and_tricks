//
//  API.Song.swift
//  FetchingData
//
//  Created by Tien Le P. on 8/15/19.
//  Copyright © 2019 Tien Le P. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

//MARK: - Result
struct SongFeed: Decodable {
    var results: [Song]
}

struct SongResult: Decodable {
    var feed: SongFeed
}

//MARK: - SongAPI
class APISong: BindableObject {
    
    //MARK: - Request
    struct QueryString {
        func getHotSongs(count: Int) -> String {
            return "https://rss.itunes.apple.com/api/v1/vn/apple-music/hot-tracks/all/\(count)/explicit.json"
        }
    }
    
    //MARK: - State result
    struct StateResult {
        var songs: [Song]
    }
    
    //MARK: - Properties
    var didChange = PassthroughSubject<APISong, Never>()
    var songs = [Song]() {
        didSet {
            didChange.send(self)
        }
    }
    
    var state: APIState<StateResult> = .loading {
        didSet {
            didChange.send(self)
        }
    }
        
    
    //MARK: - Init()
    init(count: Int = 10) {
        let urlString = QueryString().getHotSongs(count: count)
        guard let url = URL(string: urlString) else { return }
        
        URLSession.shared.dataTask(with: url) { [weak self] (data, _, _) in
            guard let data = data else { return }
            
            let songResult = try! JSONDecoder().decode(SongResult.self, from: data)
            
            DispatchQueue.main.async {
                self?.songs = songResult.feed.results
            }
        }.resume()
    }
    
    //MARK: - Init with State
    init(stateWithCount count:Int = 10) {
        let urlString = QueryString().getHotSongs(count: count)
        
        APIManager.shared().request(urlString: urlString) { [weak self] (result) in
            
            switch result {
            case .failure(let error):
                self?.state = .fetched(.failure(.error(error.localizedDescription)))
                
            case .success(let data):
                guard let data = data else {
                    self?.state = .fetched(.failure(.error("Malformed response data")))
                    return
                }
                
                do {
                    let songResult = try JSONDecoder().decode(SongResult.self, from: data)
                    self?.songs = songResult.feed.results
                    self?.state = .fetched(.success(StateResult(songs: songResult.feed.results)))
                } catch _ {
                    self?.state = .fetched(.failure(.error("JSON is error.")))
                }
            }
        }
    }
    
}
