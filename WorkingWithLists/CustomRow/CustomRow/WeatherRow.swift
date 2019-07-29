//
//  WeatherRow.swift
//  CustomRow
//
//  Created by Tien Le P. on 7/29/19.
//  Copyright © 2019 Tien Le P. All rights reserved.
//

import SwiftUI

struct WeatherRow : View {
    
    var cityName: String
    
    var body: some View {
        HStack {
            Image("sun")
                .padding(.all)
                .frame(width: 80.0, height: 80.0)
                .aspectRatio(contentMode: .fill)
            VStack(alignment: .leading) {
                Text(self.cityName)
                    .font(.title)
                Text("Việt Nam")
                    .fontWeight(.thin)
            }
            Spacer()
            Text("35C")
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
        WeatherRow(cityName: "Hà Nội")
    }
}
#endif
