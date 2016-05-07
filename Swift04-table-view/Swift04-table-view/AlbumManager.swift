//
//  AlbumManager.swift
//  Swift04-table-view
//
//  Created by shinwood on 5/7/16.
//  Copyright © 2016 guox.in. All rights reserved.
//

import Foundation

class AlbumManager {
    
    private var albums = [Album]()
    
    init() {
        let album1 = Album(title: "美丽新世界", artist: "S.H.E", year: "2012")
        let album2 = Album(title: "女生宿舍", artist: "S.H.E", year: "2001")
        let album3 = Album(title: "七里香", artist: "周杰伦", year: "2004")
        let album4 = Album(title: "未完成", artist: "孙燕姿", year: "2003")
        
        albums = [album1, album2, album3, album4]
    }
    
    func getAlbum() -> [Album] {
        return albums
    }
    
    func addAlbum(album: Album){
        albums.insert(_:album, atIndex: 0)
    }
}