//
//  ContentView.swift
//  CustomRow
//
//  Created by Tien Le P. on 7/29/19.
//  Copyright © 2019 Tien Le P. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    
    let names: [String] = ["Hà Nội",
                           "Hải Phòng",
                           "Đà Nẵng",
                           "Nha Trang",
                           "Đà Lạt",
                           "Vũng Tàu",
                           "Cần Thơ",
                           "Hồ Chí Minh"]
    
    var body: some View {
        List(0..<names.count) { index in
            WeatherRow(cityName: self.names[index])
        }
    }}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
