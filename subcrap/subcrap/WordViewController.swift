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
    var GameWordsCat : String!
    var countWord : Int = 0
    
    


    @IBOutlet var wordList : UILabel!
    @IBOutlet var spellLabel : UILabel!
    @IBOutlet var spellText : UITextField!
    @IBOutlet var readyLabel :UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        switch GameWordsCat
        {
        case "1 Hundred" :
            words = ["one","two"]
        case "2 Hundred" :
            words = ["two","three"]
        case "3 Hundred" :
            words = ["three","four"]
        case "4 Hundred" :
            words = ["four","five"]
        case "5 Hundred" :
            words = ["five","six"]
        default:
            words = ["else","not working"]
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewDidAppear(animated: Bool) {
        self.start()
        self.start2()
        self.start3()
    }
   
    
//    
   @IBAction func start(){
    
        let time = dispatch_time(dispatch_time_t(DISPATCH_TIME_NOW), 3 * Int64(NSEC_PER_SEC))
        dispatch_after(time, dispatch_get_main_queue()) {
            //put your code which should be executed with a delay here
            self.readyLabel.text = "Let's Go!"
        }
    }
    
    @IBAction func start2(){
        
        let time1 = dispatch_time(dispatch_time_t(DISPATCH_TIME_NOW), 4 * Int64(NSEC_PER_SEC))
        dispatch_after(time1, dispatch_get_main_queue()) {
            //put your code which should be executed with a delay here
            self.readyLabel.hidden = true
            self.wordList.text = self.words! [0]
            self.wordList.hidden = false
        }
    }
    
    @IBAction func start3(){
        
        let time1 = dispatch_time(dispatch_time_t(DISPATCH_TIME_NOW), 9 * Int64(NSEC_PER_SEC))
        dispatch_after(time1, dispatch_get_main_queue()) {
            //put your code which should be executed with a delay here
            self.wordList.hidden = true
            self.spellLabel.hidden = false
            self.spellText.hidden = false
        }
    }

//
//    wordList.text = words![0]
//    sleep(2)
//    readyLabel.hidden = true
//    readyLabel.text = "Let's Go!"
//    sleep(4)
//    readyLabel.hidden = true
//    sleep(1)
//    readyLabel.hidden = true
//    wordList.hidden = false
//    sleep(5)
//    wordList.hidden = true
//    spellLabel.hidden = false
//    spellText.hidden = false

//        NSTimer.scheduledTimerWithTimeInterval(5.0, target: self, selector: Selector("doAfter5Secs"), userInfo: nil, repeats: false)
//        NSTimer.scheduledTimerWithTimeInterval(2.0, target: self, selector: Selector("doAfter2Secs"), userInfo: nil, repeats: false)
//        NSTimer.scheduledTimerWithTimeInterval(3.0, target: self, selector: Selector("doAfter3Secs"), userInfo: nil, repeats: false)
//        
//    }
//
//    func doAfter2Secs(){
//        
//        readyLabel.hidden = true
//        readyLabel.text = "Let's Go!"
//        
//    }
//    
//    func doAfter3Secs(){
//        
//        readyLabel.hidden = false
//        
//        
//    }
//
//
//    func doAfter5Secs(){
//        
//        wordList.hidden = true
//        spellLabel.hidden = false
//        spellText.hidden = false
//
}
