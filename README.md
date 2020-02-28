# ShoppingList

### From iBook: Table Views in iOS 12, Quick Guides for Masterminds
### By: J.D Gauchat

## Workflow
- Created Basic prototype table cell
    - Using default properties of basic cell prototype: 
        - textLabel detailTextLabel and imageView
    - Added cell.accessoryType.checkmark property

- refactor dedicated TableView DataSource Class
- refactor dedicated TableView Delegate Class is not convinience!!

- Passing Data between ViewController with 'segue'
- present ViewController from UIApplication.windows[0].rootViewController

        //MARK: - Table Delegate
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let detailVC = storyBoard.instantiateViewController(identifier: "detailVC") as! DetailVC
        
        detailVC.selected = indexPath.row
        
        UIApplication.shared.windows[0].rootViewController?.present(detailVC, animated: true, completion: nil)
    }

