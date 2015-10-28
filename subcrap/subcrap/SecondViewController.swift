//
//  SecondViewController.swift
//  subcrap
//
//  Created by Luis Mesas on 10/27/15.
//  Copyright © 2015 Awesome Crap Industries. All rights reserved.
//

import UIKit

class SecondViewController: UITableViewController {

    private let cellStuff = ["TH words","WH words","ED words"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return cellStuff.count
        } else {
            return 0
        }
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("BasicCellTemplate1")

        if cell == nil {
            cell = UITableViewCell()
        }

        cell?.textLabel?.text = cellStuff[indexPath.row]

        return cell!
    }

    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "my stuff"
        } else {
            return "other stuff"
        }
    }

    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.performSegueWithIdentifier("presentWordScreen", sender: self)
    }
}

