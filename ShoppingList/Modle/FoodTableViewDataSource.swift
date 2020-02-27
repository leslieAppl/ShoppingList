//
//  FoodTableViewDataSource.swift
//  ShoppingList
//
//  Created by leslie on 2/25/20.
//  Copyright © 2020 leslie. All rights reserved.
//

import UIKit

//MARK: step 1 Add Protocol here
protocol DataSourceDelegate: class {
    
    func didSelectGoToDetailVC(dataSource: FoodTableViewDataSource)
    
}

class FoodTableViewDataSource: NSObject, UITableViewDataSource, UITableViewDelegate {
    
    //MARK: step 2 Create a delegate property here, don't forget to make it weak!
    weak var myDelegate: DataSourceDelegate?

    //MARK: - Table Data Source
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let data = AppData.instance.items
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "foodCell", for: indexPath) as! FoodCell
        
        cell.configureCell(at: indexPath)
        
        return cell
    }
    
    //MARK: - Table Delegate
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        //MARK: step 3 Add the delegate method call here
        myDelegate?.didSelectGoToDetailVC(dataSource: self)
        
    }

}
