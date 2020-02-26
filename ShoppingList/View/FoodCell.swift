//
//  FoodCell.swift
//  ShoppingList
//
//  Created by leslie on 2/25/20.
//  Copyright © 2020 leslie. All rights reserved.
//

import UIKit

class FoodCell: UITableViewCell {

    @IBOutlet weak var foodLbl: UILabel!
    @IBOutlet weak var foodImg: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configureCell(at index: IndexPath) {
        
        let row = index.row
        let title = AppData.instance.items[row]
        
        self.foodLbl.text = AppData.instance.items[row]
        
        if let image = AppData.instance.details[title]?.first {
            self.foodImg.image = UIImage(named: image)
        }    
    }
}
