//
//  SongCell.swift
//  ShoppingList
//
//  Created by leslie on 2/29/20.
//  Copyright © 2020 leslie. All rights reserved.
//

import UIKit

class SongCell: UITableViewCell {
    
    // referring table cell-contentView to custom .xib view file and its view class file
    @IBOutlet weak var songView: SongView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
