//
//  FoodTableViewDataSource.swift
//  ShoppingList
//
//  Created by leslie on 2/25/20.
//  Copyright © 2020 leslie. All rights reserved.
//

import UIKit

class FoodTableViewDataSource: NSObject, UITableViewDataSource, UITableViewDelegate {
    
    //MARK: - Table Data Source
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items1D.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "foodCell", for: indexPath) as! FoodCell
        
        cell.configureCell(at: indexPath)
        
        return cell
    }
    
    //MARK: - Table Delegate
    
    
}
