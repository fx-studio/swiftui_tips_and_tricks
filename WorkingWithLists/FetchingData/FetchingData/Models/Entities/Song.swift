//
//  Song.swift
//  FetchingData
//
//  Created by Tien Le P. on 8/15/19.
//  Copyright © 2019 Tien Le P. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

struct Song: APIModel {
    var id: String
    var artistName: String
    var releaseDate: String
    var name: String
    var collectionName: String
    var kind: String
    var copyright: String
    var artistId: String
    var artistUrl: String
    var artworkUrl100: String
}
