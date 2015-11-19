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

    var setLevel : String!
    var wordCat : String?
    var subCat : String!
    var words : [String]? = ["set","two"]
    var gameStyle : String!
    var countWord : Int = 0
    var gameScore : Int = 0
    var wordSetArray1 : [String] = ["the","and","a","to","said","in","he","I","of","it"]
    var wordSetArray2 : [String] = ["was","you","they","on","she","is","for","at","his","but"]
    var wordSetArray3 : [String] = ["that","with","all","we","can","are","up","had","my","her"]
    var wordSetArray4 : [String] = ["what","there","out","this","have","went","be","like","some","so"]
    var wordSetArray5 : [String] = ["not","then","were","go","little","as","no","mum","one","them"]
    var wordSetArray6 : [String] = ["do","me","down","dad","big","when","it’s","see","looked","very"]
    var wordSetArray7 : [String] = ["look","don’t","come","will","into","back","from","children","him","Mr"]
    var wordSetArray8 : [String] = ["get","just","now","came","oh","about","got","their","people","your"]
    var wordSetArray9 : [String] = ["put","could","house","old","too","by","day","made","time","I’m"]
    var wordSetArray10 : [String] = ["if","help","Mrs","called","here","off","asked","saw","make","an"]
    


    @IBOutlet var wordToSpell : UILabel!
    @IBOutlet var spellTextInput : UITextField!
    @IBOutlet var readyLabel :UILabel!
    var inputText : String = "not working"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        switch subCat
        {
        case "1 Hundred" :
            words = wordSetArray1
        case "2 Hundred" :
            words = wordSetArray2
        case "3 Hundred" :
            words = wordSetArray3
        case "4 Hundred" :
            words = wordSetArray4
        case "5 Hundred" :
            words = wordSetArray5
        default:
            words = wordSetArray6
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewDidAppear(animated: Bool) {
        self.countWord = 0
        self.animateSpellingStart()
    }
    
    @IBAction func animateSpellingStart(){
        self.delay(0.5){
            self.readyLabel.text = "Let's Go!"
        }
        self.delay(1.0){
            self.readyLabel.hidden = true
            if self.gameStyle == "L,C,W,C" {
                self.LookSpellingGame()
            }else{
                self.readyLabel.text = "A Different Game"
                self.readyLabel.hidden = false
                
            }
            
        }
    }
    
    
    @IBAction func LookSpellingGame(){
        wordToSpell.text = words![countWord]
        readyLabel.hidden = true
        spellTextInput.hidden = true
        spellTextInput.text = ""
        wordToSpell.hidden = false
        self.delay(1.0){
            self.wordToSpell.hidden = true
            self.readyLabel.text = "Now Spell The Word"
            self.readyLabel.hidden = false
            self.spellTextInput.hidden = false
        }
    }

    
    func delay(delay:Double, closure:()->()) {
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(delay * Double(NSEC_PER_SEC))
            ),
            dispatch_get_main_queue(), closure)
    }
    
    
    @IBAction func spellEntered (sender : AnyObject) {
        if self.spellTextInput.text == self.words![self.countWord] {
            self.readyLabel.text = "Correct"
            self.readyLabel.hidden = false
            ++gameScore
            ++countWord
            self.delay(1.0){
                if self.countWord < 10{
                    self.LookSpellingGame()
                }else{
                    self.spellTextInput.hidden = true
                    self.readyLabel.text = "You Scored \(self.gameScore)"
                }
                
            }
        } else {
            self.readyLabel.text = "Incorrect"
            self.readyLabel.hidden = false
            ++countWord
            self.delay(1.0){
                if self.countWord < 10{
                    self.LookSpellingGame()
                }else{
                    self.spellTextInput.hidden = true
                    self.readyLabel.text = "You Scored \(self.gameScore)"
                }
                
            }
        }
        
    }

//
//        }
//    }
    
    
    
//    @IBAction func start3(){
//        
//        let time1 = dispatch_time(dispatch_time_t(DISPATCH_TIME_NOW), 9 * Int64(NSEC_PER_SEC))
//        dispatch_after(time1, dispatch_get_main_queue()) {
//            //put your code which should be executed with a delay here
//            self.wordList.hidden = true
//            self.readyLabel.text = "Now Spell The Word"
//            self.readyLabel.hidden = false
//            self.spellText.hidden = false
//        }
//    }

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
    
//        let time1 = dispatch_time(dispatch_time_t(DISPATCH_TIME_NOW), 4 * Int64(NSEC_PER_SEC))
//        dispatch_after(time1, dispatch_get_main_queue()) {
//            //put your code which should be executed with a delay here
    
}
