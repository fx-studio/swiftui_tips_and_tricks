//
//  WeatherDetail.swift
//  MasterDetail
//
//  Created by Tien Le P. on 8/1/19.
//  Copyright © 2019 Tien Le P. All rights reserved.
//

import SwiftUI

struct WeatherDetail : View {
    var weather: Weather
    
    var body: some View {
        VStack(alignment: .center) {
            CircleImage(name: "img\(weather.id%10)")
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
            Spacer()
        }.navigationBarTitle(Text(weather.city), displayMode: .inline)
    }
}

#if DEBUG
struct WeatherDetail_Previews : PreviewProvider {
    static var previews: some View {
        WeatherDetail(weather: Weather(id: 0, city: "Hà Nội", country: "Việt Nam", temperature: 35, status: .rain))
    }
}
#endif
