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
    
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    
    @IBOutlet weak var textField3: UITextField!
    @IBOutlet weak var textField4: UITextField!
    
    
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var labelInstrument: UILabel!
    @IBOutlet weak var labelTimesTap: UILabel!
    
    @IBOutlet weak var labelTrompetTimesTap: UILabel!
    
    @IBOutlet weak var labelGitarTimesTap: UILabel!
    
    @IBOutlet weak var labelDrumTimesTap: UILabel!
    
    @IBOutlet weak var labelPianoTimesTap: UILabel!
    
    var timesTap = 0
    var trompetTimesTap = 0
    var gitarTimesTap = 0
    var drumTimesTap = 0
    var pianoTimesTap = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        resetAllValue()
    }
    
    @IBAction func tapButton(_ sender: UIButton) {
        let info: String = "You just tapped "
        switch sender {
        case button1:
            labelInstrument.text = "\(info) \(textField1.text ?? "trompet")"
        case button2:
            labelInstrument.text = "\(info) \(textField2.text ?? "gitar")"
        case button3:
            labelInstrument.text = "\(info) \(textField3.text ?? "drum")"
        case button4:
            labelInstrument.text = "\(info) \(textField4.text ?? "piano")"
        default:
            labelInstrument.text = "\(info) unknown"
        }
        
        increaseTimesTap()
        increaseTimesTap(buttonTapped: sender)
    }
    
    func resetAllValue(){
        //reset all times tap to 0
        timesTap = 0
        trompetTimesTap = 0
        gitarTimesTap = 0
        drumTimesTap = 0
        pianoTimesTap = 0
        
        //reset instrumentname label
        labelInstrument.text = "Tap one of them!"
        
        labelTimesTap.text = "0 tap"
        labelTrompetTimesTap.text = "0 tap"
        labelGitarTimesTap.text = "0 tap"
        labelDrumTimesTap.text = "0 tap"
        labelPianoTimesTap.text = "0 tap"
    }
    
    func smartUnitText(forValue: Int) -> String{
        if timesTap > 1 {
            return "taps"
        } else {
            return "tap"
        }
    }
    
    func increaseTimesTap(){
        //menambah 1 pada times tap
        timesTap = timesTap + 1
        
        //mengupdate text times tap
        let unit = smartUnitText(forValue: timesTap)
        
        //meng-update label
        labelTimesTap.text = "\(timesTap) \(unit)"
    }
    
    func increaseTimesTap(buttonTapped: UIButton){
        var label: UILabel? = nil
        
        //menambah 1 pada times tap
        var value = 0
        if buttonTapped == button1 {
            trompetTimesTap = trompetTimesTap + 1
            value = trompetTimesTap
            label = labelTrompetTimesTap
        } else if buttonTapped == button2 {
            gitarTimesTap = gitarTimesTap + 1
            value = gitarTimesTap
            label = labelGitarTimesTap
        } else if buttonTapped == button3 {
            drumTimesTap = drumTimesTap + 1
            value = drumTimesTap
            label = labelDrumTimesTap
        } else if buttonTapped == button4 {
            pianoTimesTap = pianoTimesTap + 1
            value = pianoTimesTap
            label = labelPianoTimesTap
        }
        
        //mengupdate text times tap
        let unit = smartUnitText(forValue: value)
        
        //meng-update label
        if let affectedLabel = label {
            affectedLabel.text = "\(value) \(unit)"
        }
    }
}

