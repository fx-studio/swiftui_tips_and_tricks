//
//  WeatherList.swift
//  MasterDetail
//
//  Created by Tien Le P. on 8/1/19.
//  Copyright © 2019 Tien Le P. All rights reserved.
//

import SwiftUI

struct WeatherList : View {
    var weathers = Weather.dummyDatas()
    
    var body: some View {
        NavigationView {
            List(weathers) { item in
                NavigationButton(destination: WeatherDetail(weather: item)) {
                    WeatherRow(weather: item)
                }
            }
            .navigationBarTitle(Text("Weather List"))
        }
    }
}

#if DEBUG
struct WeatherList_Previews : PreviewProvider {
    static var previews: some View {
        WeatherList()
    }
}
#endif
