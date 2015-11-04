//
//  WordViewController.swift
//  subcrap
//
//  Created by Luis Mesas on 10/27/15.
//  Copyright © 2015 Awesome Crap Industries. All rights reserved.
//

import UIKit
import Foundation

class WordViewController: UIViewController {

    var words : [String]? = ["set","two"]
    var gameStyle : String!
    
    

    @IBOutlet var wordList : UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        wordList.text = words![0]

        self.start()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func start(){
        NSTimer.scheduledTimerWithTimeInterval(5.0, target: self, selector: Selector("doAfter5Secs"), userInfo: nil, repeats: false)
    }

    func doAfter5Secs(){
        wordList.hidden = true
        
    }
}
