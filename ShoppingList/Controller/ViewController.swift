//
//  ViewController.swift
//  ShoppingList
//
//  Created by leslie on 2/24/20.
//  Copyright © 2020 leslie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let datasource = TableViewDataSource()
    let delegate = TableViewDataSource()

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = datasource
        tableView.delegate = delegate
            
        tableView.separatorStyle = .none
        tableView.contentInset = UIEdgeInsets(top: 20, left: 0, bottom: 0, right: 0)
    }
    
    
}

