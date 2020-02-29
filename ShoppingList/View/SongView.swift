//
//  myView.swift
//  ShoppingList
//
//  Created by leslie on 2/29/20.
//  Copyright © 2020 leslie. All rights reserved.
//

import UIKit

class SongView: UIView {
    
    // observer for AUTO updating 'Song' Struct Data
    // and transtlating 'Song' into 'Table Cell's contentView'(
    var song: Song! {
        
        didSet {
            
            albumCoverImage.image = song.albumCover
            titleLbl.text = song.title
            artistLbl.text = song.artist
            albumLbl.text = song.album
            yearLbl.text = song.year
            
            print(titleLbl.text)
        }
    }
    
    // referring .xib 'contentView' object to the 'SongView' class
    @IBOutlet var contentView: UIView!
    
    @IBOutlet weak var albumCoverImage: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var artistLbl: UILabel!
    @IBOutlet weak var albumLbl: UILabel!
    @IBOutlet weak var yearLbl: UILabel!
    
    // init custom view via code:
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        commonInit()
    }
    
    // init custom view via storyboard:
    required init?(coder: NSCoder) {
        super.init(coder: coder)

        commonInit()

    }
        
        // init custom view via storyboard:
    //    required init?(coder aDecoder: NSCoder) {
    //        super.init(coder: aDecoder)
    //
    //        commonInit()
    //    }
    
    func commonInit() {
        
        // Add .xib file by Bundle.main with the Nib Name
        Bundle.main.loadNibNamed("SongView", owner: self, options: nil)
        
        contentView.translatesAutoresizingMaskIntoConstraints = false
        
        // SongView: UIView class add 'contentView' which is in the 'SongView.xib' file.
        addSubview(contentView)
        
        contentView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        contentView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        contentView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        contentView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
    }
    
}
