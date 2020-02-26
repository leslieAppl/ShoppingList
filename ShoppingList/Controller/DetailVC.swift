//
//  DetailVC.swift
//  ShoppingList
//
//  Created by leslie on 2/25/20.
//  Copyright © 2020 leslie. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {

    var selected: Int! = nil
    
    @IBOutlet weak var itemLbl: UILabel!
    @IBOutlet weak var nutritionItemTxt: UITextView!
    @IBOutlet weak var itemImg: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if selected != nil {
            
            let item = AppData.instance.items[selected]
            
            if let data = AppData.instance.details[item] {
                itemLbl.text = item
                itemImg.image = UIImage(named: data[0])
                nutritionItemTxt.text = data[1]
            }
        }
    }
}
