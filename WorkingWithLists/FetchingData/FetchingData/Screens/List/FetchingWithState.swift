//
//  SongListWithFetchState.swift
//  FetchingData
//
//  Created by Tien Le P. on 8/15/19.
//  Copyright © 2019 Tien Le P. All rights reserved.
//

import SwiftUI

struct SongListWithFetchState : View {
    
    @ObjectBinding var apiSong = APISong(stateWithCount: 100)
    
    var stateContent: AnyView {
        switch apiSong.state {
        case .loading:
            return AnyView(
                ActivityIndicator(style: .medium)
            )
        case .fetched(let result):
            switch result {
            case .failure(let error):
                return AnyView(
                    Text(error.localizedDescription)
                )
            case .success(let songResult):
                return AnyView(
                    List(songResult.songs) { song in
                        NavigationButton(destination: SongDetail(song: song)) {
                            SongRow(song: song)
                        }
                    }
                )
            }
        }
    }
    
    var body: some View {
        HStack {
            stateContent
        }
        .navigationBarTitle(Text("Tracking fetching state"), displayMode: .inline)
    }
}

#if DEBUG
struct SongListWithFetchState_Previews : PreviewProvider {
    static var previews: some View {
        SongListWithFetchState()
    }
}
#endif
