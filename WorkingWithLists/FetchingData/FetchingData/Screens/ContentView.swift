//
//  ContentView.swift
//  FetchingData
//
//  Created by Tien Le P. on 8/15/19.
//  Copyright © 2019 Tien Le P. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
        NavigationView {
            List {
                NavigationButton(destination: SongListWithSimpleAPI()) {
                    Text("Simple API")
                }
                NavigationButton(destination: SongListWithFetchingBasic()) {
                    Text("Basic custom API")
                }
                NavigationButton(destination: SongListWithLoadableImage()) {
                    Text("Loading Image")
                }
                NavigationButton(destination: SongListWithFetchState()) {
                    Text("Tracking fetching state")
                }
            }
            .navigationBarTitle(Text("Fetching Data"))
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
