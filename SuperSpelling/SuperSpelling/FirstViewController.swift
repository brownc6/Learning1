//
//  FirstViewController.swift
//  subcrap
//
//  Created by Luis Mesas on 10/27/15.
//  Copyright © 2015 Awesome Crap Industries. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet private var backgroundView : UIView!
    @IBOutlet private var labelOne : UILabel!
    
  

    private var tapCounter : Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
//
//    @IBAction func colorChange() {
//        tapCounter++
//
//        if tapCounter == 1 {
//            backgroundView.backgroundColor = UIColor.redColor()
//            labelOne.text = "woop woop"
//            labelToHide.hidden = true
//        }
//
//        if tapCounter == 2{
//            backgroundView.backgroundColor = UIColor.greenColor()
//            labelOne.text = "two taps"
//            labelToHide.hidden = false
//        }
//
//
//        }

//    @IBAction func startTheApp(){
//        backgroundView.backgroundColor = UIColor.redColor()
//    }




}




