//
//  Album.swift
//  Swift04-table-view
//
//  Created by shinwood on 5/7/16.
//  Copyright © 2016 guox.in. All rights reserved.
//

import Foundation

class Album: NSObject {
    var title: String!
    var artist: String!
    var year: String!
    
    init(title: String?, artist: String?, year: String?) {
        super.init()
        
        self.title = title ?? ""
        self.artist = artist ?? ""
        self.year = year ?? ""
    }
    
    override var description: String {
        return "title: \(title)" +
               "artist: \(artist)" +
               "year: \(year)"
    }
    
}