//
//  APIManager.swift
//  FetchingData
//
//  Created by Tien Le P. on 8/15/19.
//  Copyright © 2019 Tien Le P. All rights reserved.
//

import Foundation

struct APIManager {
    // Singleton
    private static var sharedManager: APIManager = {
        let sharedManager = APIManager()
        // Configuration
        return sharedManager
    }()
    
    static func shared() -> APIManager {
        return sharedManager
    }
    
    // Initialization
    private init() {}
}
