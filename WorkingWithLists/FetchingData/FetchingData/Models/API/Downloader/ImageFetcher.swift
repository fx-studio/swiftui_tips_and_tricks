//
//  ImageFetcher.swift
//  FetchingData
//
//  Created by Tien Le P. on 8/15/19.
//  Copyright © 2019 Tien Le P. All rights reserved.
//

import Foundation
import Combine
import SwiftUI

class ImageFetcher: BindableObject {
    var didChange = PassthroughSubject<Data, Never>()
    
    var data: Data = Data() {
        didSet {
            didChange.send(data)
        }
    }
    
    init(url: String) {
        guard let imageUrl = URL(string: url) else {
            return
        }
        
        URLSession.shared.dataTask(with: imageUrl) { (data, _, _) in
            guard let data = data else { return }
            DispatchQueue.main.async { [weak self] in
                self?.data = data
            }
            
        }.resume()
    }
}
