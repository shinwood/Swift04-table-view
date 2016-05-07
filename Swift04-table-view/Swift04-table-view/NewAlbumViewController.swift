//
//  NewAlbumViewController.swift
//  Swift04-table-view
//
//  Created by shinwood on 5/7/16.
//  Copyright © 2016 guox.in. All rights reserved.
//

import UIKit

class NewAlbumViewController: UIViewController {
    
    
    @IBOutlet weak var saveButton: UIBarButtonItem!
    @IBOutlet weak var albumTitle: UITextField!
    @IBOutlet weak var albumArtist:UITextField!
    @IBOutlet weak var albumYear: UITextField!
    
    @IBAction func cancelSave(sender: UIBarButtonItem) {
        dismissViewControllerAnimated(true, completion: nil)
    }

    
    var newAlbum = Album(title: "", artist: "", year: "")
    
    //MARK: Navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if sender === saveButton {
            //trigger save button
            newAlbum.title = albumTitle.text!
            newAlbum.artist = albumArtist.text!
            newAlbum.year = albumYear.text!
        }
    }
    
}
