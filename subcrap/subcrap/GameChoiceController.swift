//
//  GameChoiceControllerTableViewController.swift
//  subcrap
//
//  Created by Brown, Chris, Vodafone Americas on 11/2/15.
//  Copyright © 2015 Awesome Crap Industries. All rights reserved.
//

import UIKit

class GameChoiceController: UITableViewController {

    var GameWordsCat : String!
    private let GameList: [String] = ["L,C,W,C","Rainbow Write","Word Splat","Word Search","Repeat x5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
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
        if section == 0 {
            return GameList.count
        } else {
            return 0
        }
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("BasicCellTemplate1")
        
        if cell == nil {
            cell = UITableViewCell()
        }
        
        cell?.textLabel?.text = GameList[indexPath.row]
        
        return cell!
    }
    
//    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        if section == 0 {
//            return "Games"
//        } else {
//            return "other stuff"
//        }
//    }
//
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "spellingScreen" {
            let destination = segue.destinationViewController as! WordViewController
            let indexPath = tableView.indexPathForSelectedRow
            let currentCell = tableView.cellForRowAtIndexPath(indexPath!) as UITableViewCell!
            destination.gameStyle = currentCell.textLabel?.text
            
        }



    }
}