//
//  AlbumViewController.swift
//  Swift04-table-view
//
//  Created by shinwood on 5/7/16.
//  Copyright © 2016 guox.in. All rights reserved.
//

import UIKit

class AlbumViewController: UITableViewController {
    
    var albumSource = AlbumManager()
    var albums = [Album]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        albums = albumSource.getAlbum()
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return albums.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("album", forIndexPath: indexPath) as UITableViewCell
        let album = albums[indexPath.row]
        cell.textLabel?.text = album.title
        cell.detailTextLabel?.text = album.artist
            
        return cell
    }
    
    //receiving unwind actions from saving album controller
    @IBAction func unwindToAlbumList(sender: UIStoryboardSegue){
        if let sourceViewController = sender.sourceViewController as? NewAlbumViewController {
           let newAlbum = sourceViewController.newAlbum
            let newIndexPath = NSIndexPath(forRow: 0, inSection: 0)
            
            albumSource.addAlbum(newAlbum)
            albums = albumSource.getAlbum()
            
            tableView.insertRowsAtIndexPaths([newIndexPath], withRowAnimation: .Top)
            
        }
    }
}
