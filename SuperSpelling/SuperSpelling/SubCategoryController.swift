//
//  SubCategoryController.swift
//  subcrap
//
//  Created by Chris Brown on 01/11/2015.
//  Copyright © 2015 Awesome Crap Industries. All rights reserved.
//

import UIKit

class SubCategoryController: UITableViewController {

    var setLevel : String!
    var subCat : [String]?
    var wordCat : String?

    
    override func viewDidLoad() {
        super.viewDidLoad()

      
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return (subCat?.count)!
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("SubCatCell", forIndexPath: indexPath)

//        if cell == nil {
//            cell = UITableViewCell()
//        }
        
        cell.textLabel?.text = subCat![indexPath.row]
        
        return cell

    }



//    override func tableView(tableView: (UITableView!), didSelectRowAtIndexPath indexPath: NSIndexPath) {
//   
//    // Get Cell Label
//    let indexPath = tableView.indexPathForSelectedRow!;
//    let currentCell = tableView.cellForRowAtIndexPath(indexPath) as UITableViewCell!;
//    
//    valueToPass = currentCell.textLabel!.text
//    
//}

    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "Game" {
            let destination = segue.destinationViewController as! GameChoiceController
            let indexPath = tableView.indexPathForSelectedRow
            let currentCell = tableView.cellForRowAtIndexPath(indexPath!) as UITableViewCell!
            destination.wordCat = wordCat
            destination.subCat = currentCell.textLabel?.text
            destination.setLevel = setLevel
        }
    
//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        if segue.identifier == "Game" {
//        let destination = segue.destinationViewController as! GameChoiceController
//        destination.GameWordsCat = valueToPass
//        }

    }
}





