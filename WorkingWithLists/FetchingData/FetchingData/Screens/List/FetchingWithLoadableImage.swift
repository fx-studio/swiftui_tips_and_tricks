//
//  SongListWithLoadableImage.swift
//  FetchingData
//
//  Created by Tien Le P. on 8/15/19.
//  Copyright © 2019 Tien Le P. All rights reserved.
//

import SwiftUI

struct SongListWithLoadableImage : View {
    @State var apiSong = APISong(count: 100)
    
    var body: some View {
        List (apiSong.songs) { song in
            SongRow(song: song)
        }
        .navigationBarTitle(Text("Loading Image"), displayMode: .inline)
    }
}

#if DEBUG
struct SongListWithLoadableImage_Previews : PreviewProvider {
    static var previews: some View {
        SongListWithLoadableImage()
    }
}
#endif
