//
//  SongListWithFetchingBasic.swift
//  FetchingData
//
//  Created by Tien Le P. on 8/15/19.
//  Copyright © 2019 Tien Le P. All rights reserved.
//

import SwiftUI

struct SongListWithFetchingBasic : View {
    
    @State var apiSong = APISong(count: 100)
    
    var body: some View {
        List (apiSong.songs) { song in
            Text(song.name)
        }
        .navigationBarTitle(Text("Basic custom API"), displayMode: .inline)
    }
}

#if DEBUG
struct SongListWithFetchingBasic_Previews : PreviewProvider {
    static var previews: some View {
        SongListWithFetchingBasic()
    }
}
#endif
