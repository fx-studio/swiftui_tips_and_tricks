//
//  ContentView.swift
//  RenderGradient
//
//  Created by Tien Le P. on 7/23/19.
//  Copyright © 2019 Tien Le P. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
        VStack {
            Text("Hello World")
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                .font(.title)
                .foregroundColor(.white)
                .background(LinearGradient(gradient: Gradient(colors: [.white, .black]), startPoint: .top, endPoint: .bottom), cornerRadius: 0)
            Text("Hello World again")
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                .font(.title)
                .foregroundColor(.white)
                .background(LinearGradient(gradient: Gradient(colors: [.white, .yellow, .red]), startPoint: .top, endPoint: .bottom), cornerRadius: 0)
            Text("Hello World again and again")
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                .font(.title)
                .foregroundColor(.white)
                .background(LinearGradient(gradient: Gradient(colors: [.green, .blue, .orange, .red]), startPoint: .leading, endPoint: .trailing), cornerRadius: 0)
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
