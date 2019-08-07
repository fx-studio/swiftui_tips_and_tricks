//
//  ContentView.swift
//  ResizeImage
//
//  Created by Tien Le P. on 8/2/19.
//  Copyright © 2019 Tien Le P. All rights reserved.
//

import SwiftUI


struct FittedImage: View {
    let imageName: String
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .aspectRatio(1, contentMode: .fit)
        }.frame(width: width, height: height)
    }
}

struct ContentView : View {
    var body: some View {
        VStack {
            FittedImage(imageName: "ic_check", width: 100, height: 100)
                .background(Color.yellow)
            FittedImage(imageName: "ic_check", width: 200, height: 50)
                .background(Color.yellow)
            FittedImage(imageName: "ic_check", width: 50, height: 200)
                .background(Color.yellow)
            FittedImage(imageName: "ic_check", width: 75, height: 175)
                .background(Color.yellow)
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
