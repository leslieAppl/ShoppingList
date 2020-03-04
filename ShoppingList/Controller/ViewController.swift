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
        

        setupFoodTableView()

    }
    
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        
        if let path = tableView.indexPathForSelectedRow {

            tableView.deselectRow(at: path, animated: true)
            
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "showDetailVC" {
            
            let detailVC = segue.destination as! DetailVC
            
            if let path = tableView.indexPathForSelectedRow {

                detailVC.selected = path.row

            }
        } else if segue.identifier == "showAddItem" {
            
            let addItemVC = segue.destination as! AddItemVC
            
            // assign self type into ‘AddItemVC.delegate’ 
            addItemVC.delegate = self
        }
    }
    
    func saveItem(title: String) {
        
        let lower = title.lowercased()
        let final = lower.capitalized
        AppData.instance.items.append(final)
        AppData.instance.details[final] = ["no image", "not defined"]
        tableView.reloadData()
        navigationController?.popViewController(animated: true)
        
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

//extension ViewController: UITableViewDelegate {
//
//    //MARK: - Table Delegate
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//
//        performSegue(withIdentifier: "showDetailVC", sender: self)
//
//    }
//
//}

