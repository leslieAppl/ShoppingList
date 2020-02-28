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
        
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let detailVC = storyBoard.instantiateViewController(identifier: "detailVC") as! DetailVC
        
        detailVC.selected = indexPath.row
        
        UIApplication.shared.windows[0].rootViewController?.present(detailVC, animated: true, completion: nil)
        
        // 'keyWindow' was deprecated in iOS 13.0: Should not be used for applications
        // that support multiple scenes as it returns a key window across all connected scenes
//        UIApplication.shared.keyWindow?.rootViewController?.present(detailVC, animated: true, completion: nil)
        
        // Cause there is no 'segue' for the hierarchy ViewController system in the TavleViewCell.xib file. [error: whose view is not in the window hierarchy!]
        // So 'performSegue(withIdentifier: String, sender: Any?)' in the UIViewController Class is invalidated.
//        let viewController = storyBoard.instantiateViewController(withIdentifier: "viewController") as! ViewController
//        vc.performSegue(withIdentifier: "showDetailVC", sender: self)
        
    }
}
