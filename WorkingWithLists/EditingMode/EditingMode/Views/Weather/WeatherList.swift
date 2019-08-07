//
//  WeatherList.swift
//  MasterDetail
//
//  Created by Tien Le P. on 8/1/19.
//  Copyright © 2019 Tien Le P. All rights reserved.
//

import SwiftUI

struct WeatherList : View {
    @State var weathers = Weather.dummyDatas()
    
    var body: some View {
        NavigationView {
            List {
                ForEach (weathers) { item in
                    WeatherRow(weather: item)
                }
                .onDelete(perform: delete)
                .onMove(perform: move)
            }
            .navigationBarTitle(Text("Weather List"))
                .navigationBarItems(leading: Button(action: add, label: {
                    Text("Add")
                }) ,trailing: EditButton())
        }
    }
    
    func delete(at offsets: IndexSet) {
        if let first = offsets.first {
            weathers.remove(at: first)
        }
    }
    
    func move(from source: IndexSet, to destination: Int) {
        let reversedSource = source.sorted()
        for index in reversedSource.reversed() {
            weathers.insert(weathers.remove(at: index), at: destination)
        }
    }
    
    func add() {
        let maxID = weathers.map { $0.id }.max()! + 1
        let item = Weather(id: maxID, city: "new city", country: "new country", temperature: 25, status: .sun)
        weathers.append(item)
    }
}

#if DEBUG
struct WeatherList_Previews : PreviewProvider {
    static var previews: some View {
        WeatherList()
    }
}
#endif
