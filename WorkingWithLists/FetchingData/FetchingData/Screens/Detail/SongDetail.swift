//
//  SongDetail.swift
//  FetchingData
//
//  Created by Tien Le P. on 8/15/19.
//  Copyright © 2019 Tien Le P. All rights reserved.
//

import SwiftUI

struct SongDetail : View {
    var song: Song
    var body: some View {
        VStack {
            LoadableImageView(with: song.artworkUrl100)
                .frame(height: 300.0)
            
            VStack {
                HStack(alignment: .top) {
                    Text("name")
                    HStack {
                        Text(song.name).fontWeight(.bold).lineLimit(nil)
                        Spacer()
                    }
                }
                HStack {
                    Text("artist name")
                    HStack {
                        Text(song.artistName).fontWeight(.bold)
                        Spacer()
                    }
                }
                HStack {
                    Text("release date")
                    HStack {
                        Text(song.releaseDate).fontWeight(.bold)
                        Spacer()
                    }
                }
                HStack {
                    Text("collectionName")
                    HStack {
                        Text(song.collectionName).fontWeight(.bold)
                        Spacer()
                    }
                }
                HStack {
                    Text("kind")
                    HStack {
                        Text(song.kind).fontWeight(.bold)
                        Spacer()
                    }
                }
            }.padding()
            Text(song.copyright).fontWeight(.thin).lineLimit(nil)
            Spacer()
        }
        .navigationBarTitle(Text("Detial"), displayMode: .inline)
    }
}

#if DEBUG
struct SongDetail_Previews : PreviewProvider {
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
        return SongDetail(song: song)
    }
}
#endif
