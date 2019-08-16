//
//  NetworkingManager.swift
//  FetchingData
//
//  Created by Tien Le P. on 8/15/19.
//  Copyright © 2019 Tien Le P. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

class NetworkingManager: BindableObject {
    var didChange = PassthroughSubject<NetworkingManager, Never>()
    
    var songs = [Song]() {
        didSet {
            didChange.send(self)
        }
    }
    
    init () {
        guard let url = URL(string: "https://rss.itunes.apple.com/api/v1/vn/apple-music/hot-tracks/all/100/explicit.json") else { return }
        
        URLSession.shared.dataTask(with: url) { (data, _, _) in
            guard let data = data else { return }
            
            let songResult = try! JSONDecoder().decode(SongResult.self, from: data)
            
            DispatchQueue.main.async {
                self.songs = songResult.feed.results
            }
            }.resume()
    }
}
