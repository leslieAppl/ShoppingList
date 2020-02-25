//
//  ViewController.swift
//  ShoppingList
//
//  Created by leslie on 2/24/20.
//  Copyright © 2020 leslie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let simpleDataSource = TableViewDataSource()
    let simpleDelegate = TableViewDataSource()
    
    let foodDataSource = FoodTableViewDataSource()
    let foodDelegate = FoodTableViewDataSource()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupSimpleTableView()
    }
    
    @IBAction func switchBtnPressed(_ sender: Any) {
        
        switch currentViewModeValue {
        case .Simple:
            currentViewModeValue = .Food
            setupFoodTableView()
            
            tableView.reloadData()
            
        case .Food:
            currentViewModeValue = .Simple
            setupSimpleTableView()
            
            tableView.reloadData()
        }
        

    }
    
    func setupSimpleTableView() {
        
        tableView.dataSource = simpleDataSource
        tableView.delegate = simpleDelegate
            
        tableView.separatorStyle = .none
        tableView.contentInset = UIEdgeInsets(top: 20, left: 0, bottom: 0, right: 0)

    }
    
    func setupFoodTableView() {
        
        tableView.dataSource = foodDataSource
        tableView.delegate = foodDelegate
        
        // TODO: Registers a nib object containing a cell with the table view
        // The UINib object looks for the nib file in the bundle's
        tableView.register(UINib.init(nibName: "FoodCell", bundle: nil), forCellReuseIdentifier: "foodCell")
        
        tableView.separatorStyle = .none
        
        
    }

}

