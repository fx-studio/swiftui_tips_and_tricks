//
//  APIDefine.swift
//  FetchingData
//
//  Created by Tien Le P. on 8/15/19.
//  Copyright © 2019 Tien Le P. All rights reserved.
//

import Foundation
import SwiftUI

// Models
typealias APIModel = Decodable & Identifiable

// Completions
typealias Completion<T> = (Result<T, APIError>) -> Void

// Error
enum APIError: Error {
    case error(String)
    
    var localizedDescription: String {
        switch self {
        case .error(let message):
            return message
        }
    }
}

// Result
enum APIResult {
    case success(Data?)
    case failure(APIError)
}


// State
enum APIState<T> {
    case loading
    case fetched(Result<T, APIError>)
}
