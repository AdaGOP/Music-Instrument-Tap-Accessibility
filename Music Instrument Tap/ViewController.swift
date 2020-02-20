//
//  ViewController.swift
//  Nano 1 Day 3
//
//  Created by Haryanto Salim on 20/02/20.
//  Copyright © 2020 Haryanto Salim. All rights reserved.
//
/**
 Day 3 - 1 Ben, Athoya
 - goal:
     - familiarize with xcode (create new project, navigators, inspectors, editors)
     - storyboard : drag n drop controls, customizing properties through attribute inspector, safe area
     - running app on simulator
     - create the craziest app
     - image

 Day 3 - 2 Octa
 - goal:
     - learn about ibaction & iboutlet
     - learn about variables and datatype
     - kenalan doang sama functions
     - operators
     - string
 
 Day 4 - 1 Haryanto, Antoni
 - goal:
     - conditionals (if then else, switch and ternary)
     - lebih dalam dengan function
     - optionals
     - textfield
 */

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var labelInstrument: UILabel!
    @IBOutlet weak var labelTimesTap: UILabel!
    
    var timesTap = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func tapButton(_ sender: UIButton) {

        switch sender {
        case button1:
            labelInstrument.text = "terompet"
        case button2:
            labelInstrument.text = "gitar"
        case button3:
            labelInstrument.text = "drum"
        case button4:
            labelInstrument.text = "piano"
        default:
            labelInstrument.text = "unknown"
        }
        
        increaseTimesTap()
    }
    
    func increaseTimesTap(){
        //menambah 1 pada times tap
        timesTap = timesTap + 1
        
        //mengupdate text times tap
        var newLabelText = ""
        if timesTap > 1 {
            newLabelText = "\(timesTap) taps"
        } else {
            newLabelText = "\(timesTap) tap"
        }
        
        //meng-update label
        labelTimesTap.text = newLabelText
    }
    
}

