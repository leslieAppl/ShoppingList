//
//  TableViewDataSource.swift
//  ShoppingList
//
//  Created by leslie on 2/25/20.
//  Copyright © 2020 leslie. All rights reserved.
//

import UIKit

class TableViewDataSource: NSObject, UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    //MARK: - Table Data Source
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return items1D.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let row = indexPath.row
        let section = indexPath.section
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        cell.textLabel?.text = items1D[row]
        cell.detailTextLabel?.text = descriptions[row]
        cell.imageView?.image = UIImage(named: images1D[row])
        
        if selected[row] {
            cell.accessoryType = .checkmark
        }
        
        return cell
    }
    
    //MARK: - Table Delegate
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let cell = tableView.cellForRow(at: indexPath)
        let row = indexPath.row
        
        if selected[row] {
            cell?.accessoryType = .none
            selected[row] = false
        } else {
            cell?.accessoryType = .checkmark
            selected[row] = true
        }
        
        // After user selected the cell, have to manually deselect the cell row.
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        
        if indexPath.row % 2 == 0 {
            cell.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        } else {
            cell.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        }
    }
    

}
