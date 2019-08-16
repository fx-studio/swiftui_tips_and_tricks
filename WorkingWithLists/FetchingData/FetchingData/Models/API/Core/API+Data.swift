//
//  API+Data.swift
//  FetchingData
//
//  Created by Tien Le P. on 8/15/19.
//  Copyright © 2019 Tien Le P. All rights reserved.
//

import Foundation

typealias JSON = [String: Any]
extension Data {
    func toJSON() -> JSON {
        var json: JSON = [:]
        do {
            if let jsonObj = try JSONSerialization.jsonObject(with: self, options: .mutableContainers) as? JSON {
                json = jsonObj
            }
        } catch {
            print("JSON casting error")
        }
        return json
    }
}
