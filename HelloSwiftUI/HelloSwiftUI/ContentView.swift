//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Tien Le P. on 7/2/19.
//  Copyright © 2019 Tien Le P. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
        VStack {
            Text("Hello")
                .font(.title)
                Text("SwiftUI")
                    .font(.headline)
                .color(.red)
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
