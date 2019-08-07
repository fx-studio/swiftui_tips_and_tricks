//
//  ContentView.swift
//  DynamicList
//
//  Created by Tien Le P. on 7/30/19.
//  Copyright © 2019 Tien Le P. All rights reserved.
//

import SwiftUI

struct ContentView : View {
   
    let weathers = Weather.dummyDatas()
    
    var body: some View {
        List(weathers, rowContent: WeatherRow.init)
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
