//
//  ContentView.swift
//  TapGestures
//
//  Created by Tien Le P. on 7/9/19.
//  Copyright © 2019 Tien Le P. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    
    @State var red: Double = 1.0
    @State var green: Double = 1.0
    @State var blue: Double = 1.0

    var body: some View {
        Text("Tap me!")
            .font(.title)
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
            .background(Color(red: self.red, green: self.green, blue: self.blue))
            .tapAction {
                // did tap
                self.red = Double.random(in: 0...1)
                self.green = Double.random(in: 0...1)
                self.blue = Double.random(in: 0...1)
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
