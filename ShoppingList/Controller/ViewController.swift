//
//  ViewController.swift
//  ShoppingList
//
//  Created by leslie on 2/24/20.
//  Copyright © 2020 leslie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    //MARK: - Table Data Source
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return items.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let row = indexPath.row
        let section = indexPath.section
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        cell.textLabel?.text = items[row]
        cell.detailTextLabel?.text = descriptions[row]
        cell.imageView?.image = UIImage(named: images[row])
        
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
    
}
