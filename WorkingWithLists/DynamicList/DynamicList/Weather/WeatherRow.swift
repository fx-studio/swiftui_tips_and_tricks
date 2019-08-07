//
//  WeatherRow.swift
//  DynamicList
//
//  Created by Tien Le P. on 7/30/19.
//  Copyright © 2019 Tien Le P. All rights reserved.
//

import SwiftUI

struct WeatherRow : View {
    
    var weather: Weather
    
    var body: some View {
        HStack {
            Image(weather.getStatusInfo())
                .padding(.all)
                .frame(width: 80.0, height: 80.0)
                .aspectRatio(contentMode: .fill)
            VStack(alignment: .leading) {
                Text(weather.city)
                    .font(.title)
                Text(weather.country)
                    .fontWeight(.thin)
            }
            Spacer()
            Text("\(weather.temperature)°C")
                .font(.largeTitle)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .padding(.all)
        }
    }
}

#if DEBUG
struct WeatherRow_Previews : PreviewProvider {
    static var previews: some View {
        WeatherRow(weather: Weather(city: "Hà Nội", country: "Việt Nam", temperature: 30, status: .sun))
    }
}
#endif

