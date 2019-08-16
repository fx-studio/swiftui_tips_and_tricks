//
//  SongListWithSimpleAPI.swift
//  FetchingData
//
//  Created by Tien Le P. on 8/15/19.
//  Copyright © 2019 Tien Le P. All rights reserved.
//

import SwiftUI

struct SongListWithSimpleAPI : View {
    
    @State var networkManager = NetworkingManager()
    
    var body: some View {
        List (networkManager.songs) { song in
            Text(song.name)
            }
        .navigationBarTitle(Text("Simple API"), displayMode: .inline)
    }
}

#if DEBUG
struct SongListWithSimpleAPI_Previews : PreviewProvider {
    static var previews: some View {
        SongListWithSimpleAPI()
    }
}
#endif
