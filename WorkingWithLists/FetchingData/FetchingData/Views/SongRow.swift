//
//  SongRow.swift
//  FetchingData
//
//  Created by Tien Le P. on 8/15/19.
//  Copyright © 2019 Tien Le P. All rights reserved.
//

import SwiftUI

struct SongRow : View {
    var song: Song
    var body: some View {
        
        HStack(alignment: .top) {
            LoadableImageView(with: song.artworkUrl100)
                .frame(width: 80.0, height: 80.0)
                .background(Color.gray)
            VStack(alignment: .leading) {
                Text(song.name)
                    .font(.title)
                    .fontWeight(.bold)
                    .lineLimit(nil)
                Text(song.artistName)
                Text(song.releaseDate)
                    .fontWeight(.thin)
            }
            Spacer()
        }
    }
}

#if DEBUG
struct SongRow_Previews : PreviewProvider {
    static var previews: some View {
        let json: [String: String] = ["artistName": "88rising & NIKI",
                                      "id": "1474645579",
                                      "releaseDate": "2019-08-13",
                                      "name": "Indigo",
                                      "collectionName": "Indigo - Single",
                                      "kind": "song",
                                      "copyright": "℗ 2019 88rising Records/12Tone Music, LLC",
                                      "artistId": "1386385733",
                                      "artistUrl": "https://music.apple.com/WebObjects/MZStore.woa/wa/viewCollaboration?cc=vn&ids=1386385733-1324809450&app=music",
                                      "artworkUrl100": "https://is2-ssl.mzstatic.com/image/thumb/Music113/v4/3d/6d/d0/3d6dd00b-b480-740f-bc6e-e2ca78ff918e/190296882920.jpg/200x200bb.png"]
        let data = try! JSONSerialization.data(withJSONObject: json, options: .prettyPrinted)
        let song = try! JSONDecoder().decode(Song.self, from: data)
        return SongRow(song: song)
    }
}
#endif
