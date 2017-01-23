//
//  CategoryPickerViewController.swift
//  MyLocations
//
//  Created by Joe Lucero on 1/13/17.
//  Copyright © 2017 Joe Lucero. All rights reserved.
//

import UIKit

class CategoryPickerViewController: UITableViewController {
    
    var selectedCategoryName = ""
    var selectedIndexPath = IndexPath()
    
    let categories = ["No Category",
                      "Apple Store",
                      "Bar",
                      "Bookstore",
                      "Club",
                      "Grocery Store",
                      "Historic Building",
                      "House",
                      "Icecream Vendor",
                      "Landmark",
                      "Park"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        for i in 0..<categories.count {
            if categories[i] == selectedCategoryName {
                selectedIndexPath = IndexPath(row: i, section: 0)
                break
            }
        }
        
        tableView.backgroundColor = UIColor.black
        tableView.separatorColor = UIColor(white: 1.0, alpha: 0.2)
        tableView.indicatorStyle = .white
    }
    
    // MARK: Table View Data Source 
    override func tableView(_ tableView: UITableView,
                            numberOfRowsInSection section: Int) -> Int {
        return categories.count
    }
    
    override func tableView(_ tableView: UITableView,
                            cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell",
                                                 for: indexPath)
        let categoryName  = categories[indexPath.row]
        cell.textLabel?.text = categoryName
        
        if categoryName == selectedCategoryName {
            cell.accessoryType = .checkmark
        } else {
            cell.accessoryType = .none
        }
        
        return cell
    }
    
    // MARK: - Table View Delegate
    override func tableView(_ tableView: UITableView,
                            didSelectRowAt indexPath: IndexPath) {
        
        if indexPath.row != selectedIndexPath.row {
            if let oldCell = tableView.cellForRow(at: selectedIndexPath) {
                oldCell.accessoryType = .none
            }
            if let newCell = tableView.cellForRow(at: indexPath) {
                newCell.accessoryType = .checkmark
            }
            selectedIndexPath = indexPath
            selectedCategoryName = "test"
        }
    }
    
    override func tableView(_ tableView: UITableView,
                            willDisplay cell: UITableViewCell,
                            forRowAt indexPath: IndexPath) {
        cell.backgroundColor = UIColor.black
        
        if let textLabel = cell.textLabel {
            textLabel.textColor = UIColor.white
            textLabel.highlightedTextColor = textLabel.textColor
        }
        
        let selectionView = UIView(frame: CGRect.zero)
        selectionView.backgroundColor = UIColor(white: 1.0, alpha: 0.2)
        cell.selectedBackgroundView = selectionView
    }
    
    // MARK: - Navigation Methods
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "PickedCategory"{
            let cell = sender as! UITableViewCell
            if let indexPath = tableView.indexPath(for: cell){
                selectedCategoryName = categories[indexPath.row]
            }
        }
    }
    
}
