//
//  Weather.swift
//  DynamicList
//
//  Created by Tien Le P. on 7/30/19.
//  Copyright © 2019 Tien Le P. All rights reserved.
//

import Foundation
import SwiftUI

struct Weather: Identifiable {
    enum WeatherStatus {
        case sun
        case rain
        case cloud
    }
    
    var id: Int
    var city: String
    var country: String
    var temperature: Int
    var status: WeatherStatus
    
    func getStatusInfo() -> String {
        var str = ""
        
        switch status {
        case .sun:
            str = "sun"
        case .rain:
            str = "rain"
        case .cloud:
            str = "cloud"
        }
        
        return str
    }
}

// Dummy data
extension Weather {
    static func dummyDatas() -> [Weather] {
        return [Weather(id: 0, city: "Hà Nội", country: "Việt Nam", temperature: 30, status: .sun),
                Weather(id: 1,city: "Hải Phòng", country: "Việt Nam", temperature: 28, status: .cloud),
                Weather(id: 2,city: "Đà Nẵng", country: "Việt Nam", temperature: 33, status: .rain),
                Weather(id: 3,city: "Nha Trang", country: "Việt Nam", temperature: 27, status: .sun),
                Weather(id: 4,city: "Đà Lạt", country: "Việt Nam", temperature: 20, status: .cloud),
                Weather(id: 5,city: "Vũng Tàu", country: "Việt Nam", temperature: 30, status: .cloud),
                Weather(id: 6,city: "Cần Thơ", country: "Việt Nam", temperature: 31, status: .sun),
                Weather(id: 7,city: "Hồ Chí Minh", country: "Việt Nam", temperature: 35, status: .rain),
                Weather(id: 8,city: "Tokyo", country: "Japan", temperature: 20, status: .cloud),
                Weather(id: 9,city: "London", country: "England", temperature: 21, status: .rain),
                Weather(id: 10,city: "NewYork", country: "USA", temperature: 35, status: .sun),
                Weather(id: 11, city: "Beijing", country: "China", temperature: 30, status: .rain),
                Weather(id: 12,city: "Paris", country: "France", temperature: 30, status: .rain),
                Weather(id: 13,city: "Moscow", country: "Russia", temperature: 30, status: .rain)].shuffled()
    }
}
