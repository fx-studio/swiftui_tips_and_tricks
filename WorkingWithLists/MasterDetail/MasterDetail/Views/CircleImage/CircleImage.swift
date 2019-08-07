//
//  CircleImage.swift
//  MasterDetail
//
//  Created by Tien Le P. on 8/1/19.
//  Copyright © 2019 Tien Le P. All rights reserved.
//

import SwiftUI

struct CircleImage : View {
    var name: String
    var body: some View {
        Image(name)
            .resizable()
            .frame(height: 300)
            .clipShape(Circle())
            .overlay(
                Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
            .padding(.all)
    }
}

#if DEBUG
struct CircleImage_Previews : PreviewProvider {
    static var previews: some View {
        CircleImage(name: "img2")
    }
}
#endif
