//
//  ViewController.swift
//  LV Dice App
//
//  Created by George Garcia on 3/8/18.
//  Copyright © 2018 GTeam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
    
    @IBOutlet weak var diceOneImage: UIImageView!
    @IBOutlet weak var diceTwoImage: UIImageView!
    @IBOutlet weak var rollButton: UIButton!
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        updatedDice()
        // this code will generate a number from 0 - 5 but none of the image names have a 0 in it.
        // diceOneImage.image = UIImage(named: "dice\(randomDiceIndex1).png")
        // diceTwoImage.image = UIImage(named: "dice\(randomDiceIndex2).png")
    }
    
    func updatedDice(){
        
        randomDiceIndex1 = Int(arc4random_uniform(6)) // upperbound; this will generate from 0 - 5 (or 6-1)
        randomDiceIndex2 = Int(arc4random_uniform(6))
        
        diceOneImage.image = UIImage(named: diceArray[randomDiceIndex1])
        diceTwoImage.image = UIImage(named: diceArray[randomDiceIndex2])
    }
    
    override func becomeFirstResponder() -> Bool { // First make the view controller respond to touch events
        return true
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        print("Hey you shook me!")
        updatedDice()
    }
    
    override func viewDidLoad() { // if upon opening the app. Only gets triggered when the view or the screen loads up
        super.viewDidLoad()
        
        updatedDice()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

