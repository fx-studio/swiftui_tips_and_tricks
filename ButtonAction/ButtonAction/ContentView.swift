//
//  ContentView.swift
//  ButtonAction
//
//  Created by Tien Le P. on 7/8/19.
//  Copyright © 2019 Tien Le P. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    
    @State var count: Int = 0
    
    var body: some View {
        VStack {
            Text("Count: \(self.count)")
                .font(.title)
            Button(action: {
                //did tap
                self.count = self.count + 1
            }) {
                Text("Tap me")
            }
            .padding(.all)
            .background(Color.green)
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
