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
    @IBOutlet weak var textFieldTrompet: UITextField!
    @IBOutlet weak var textFieldGitar: UITextField!
    
    @IBOutlet weak var textFieldDrum: UITextField!
    @IBOutlet weak var textFieldPiano: UITextField!
    
    @IBOutlet weak var buttonTrompet: UIButton!
    @IBOutlet weak var buttonGitar: UIButton!
    @IBOutlet weak var buttonDrum: UIButton!
    @IBOutlet weak var buttonPiano: UIButton!
    @IBOutlet weak var labelInstrument: UILabel!
    @IBOutlet weak var labelTapCount: UILabel!
    
    @IBOutlet weak var labelTrompetTapCount: UILabel!
    
    @IBOutlet weak var labelGitarTapCount: UILabel!
    
    @IBOutlet weak var labelDrumTapCount: UILabel!
    
    @IBOutlet weak var labelPianoTapCount: UILabel!
    
    var timesTap: Int = 0
    var trompetTapCount: Int = 0
    var gitarTapCount: Int = 0
    var drumTapCount: Int = 0
    var pianoTapCount: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        reset()
    }
    
    @IBAction func tapButton(_ sender: UIButton) {
        let preMessage: String = "You just tapped"
        let unknownMessage: String = "Please, give it a name!"
        
        var textForlabel: String = ""
        
        switch sender {
        case buttonTrompet:
            //optional is used because of the `text` property of the TextField is optional while the value of the `text` property is @"" by default.
            if let textInTrompetField = textFieldTrompet.text {
                textForlabel = "\(preMessage) \(textInTrompetField)"
            }
        case buttonGitar:
            if let textInGitarField = textFieldGitar.text {
                textForlabel = textInGitarField == "" ? unknownMessage : "\(preMessage) \(textInGitarField)"
            }
        case buttonDrum:
            if let textInDrumField = textFieldDrum.text {
                textForlabel = textInDrumField == "" ? unknownMessage : "\(preMessage) \(textInDrumField)"
            }
        case buttonPiano:
            if let textInPianoField = textFieldPiano.text {
                textForlabel = textInPianoField == "" ? unknownMessage : "\(preMessage) \(textInPianoField)"
            }
        default://never happen but a switch has to have default
            labelInstrument.text = "\(preMessage) unknown"
        }
        
        labelInstrument.text = textForlabel
        
        increaseTapCount()
        increaseInstrumentTapCount(forButton: sender)
    }
    
    @IBAction func tappedReset(_ sender: UIButton) {
        reset()
    }
    
    
    func reset(){
        //reset all times tap to 0
        timesTap = 0
        trompetTapCount = 0
        gitarTapCount = 0
        drumTapCount = 0
        pianoTapCount = 0
        
        //reset instrumentname label
        labelInstrument.text = "Tap one of them!"
        
        labelTapCount.text = "0 tap"
        labelTrompetTapCount.text = "0 tap"
        labelGitarTapCount.text = "0 tap"
        labelDrumTapCount.text = "0 tap"
        labelPianoTapCount.text = "0 tap"
    }
    
    func smartUnitTextDisplay(forValue: Int) -> String{
        if forValue > 1 {
            return "taps"
        } else {
            return "tap"
        }
        
        //example using ternary
//        var unit = timesTap > 1 ? "taps" : "tap"
//        return unit
    }
    
    func increaseTapCount(){
        //menambah 1 pada times tap
        timesTap = timesTap + 1
        
        //mengupdate text times tap
        let unit = smartUnitTextDisplay(forValue: timesTap)
        
        //meng-update label
        labelTapCount.text = "\(timesTap) \(unit)"
    }
    
    func increaseInstrumentTapCount(forButton: UIButton){
        var hereIsTheLabel: UILabel?
        
        //menambah 1 pada times tap
        var value = 0
        if forButton == buttonTrompet {
            trompetTapCount = trompetTapCount + 1
            value = trompetTapCount
            hereIsTheLabel = labelTrompetTapCount
        } else if forButton == buttonGitar {
            gitarTapCount = gitarTapCount + 1
            value = gitarTapCount
            hereIsTheLabel = labelGitarTapCount
        } else if forButton == buttonDrum {
            drumTapCount = drumTapCount + 1
            value = drumTapCount
            hereIsTheLabel = labelDrumTapCount
        } else if forButton == buttonPiano {
            pianoTapCount = pianoTapCount + 1
            value = pianoTapCount
            hereIsTheLabel = labelPianoTapCount
        }
        
        //mengupdate text times tap
        let unit = smartUnitTextDisplay(forValue: value)
        
        //meng-update label
        if let affectedLabel = hereIsTheLabel {
            affectedLabel.text = "\(value) \(unit)"
        }
    }
}

