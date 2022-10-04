//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //IBOulet allow me to reference a UI element
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    //Creating variables
//    var leftDiceNumber = 0
//    var rightDiceNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //-----------------------------------------------------------------------------------------------------
        //Who         .What  = Value
//        diceImageView1.image = UIImage(imageLiteralResourceName: "DiceSix")
//        diceImageView1.alpha = 0.5
        
        //-----------------------------------------------------------------------------------------------------
        //Who         .What  = Value
//        diceImageView2.image = UIImage(imageLiteralResourceName: "DiceTwo")
//        diceImageView2.alpha = 0.5
    }

    //IBAction means Interface Builder Action
    @IBAction func rollButtonPressed(_ sender: UIButton) {
//        diceImageView1.image = UIImage(imageLiteralResourceName: "DiceFour")
//        diceImageView2.image = UIImage(imageLiteralResourceName: "DiceFour")
        
        //-----------------------------------------------------------------------------------------------------
        // Creating an array of number and then displaying the values of in on the app when the roll button is pressed
//        diceImageView1.image = [UIImage(imageLiteralResourceName: "DiceOne"),
//                                UIImage(imageLiteralResourceName: "DiceTwo"),
//                                UIImage(imageLiteralResourceName: "DiceThree"),
//                                UIImage(imageLiteralResourceName: "DiceFour"),
//                                UIImage(imageLiteralResourceName: "DiceFive"),
//                                UIImage(imageLiteralResourceName: "DiceSix")][leftDiceNumber]
//
//        diceImageView2.image = [UIImage(imageLiteralResourceName: "DiceOne"),
//                                UIImage(imageLiteralResourceName: "DiceTwo"),
//                                UIImage(imageLiteralResourceName: "DiceThree"),
//                                UIImage(imageLiteralResourceName: "DiceFour"),
//                                UIImage(imageLiteralResourceName: "DiceFive"),
//                                UIImage(imageLiteralResourceName: "DiceSix")][rightDiceNumber]
        
        //-----------------------------------------------------------------------------------------------------
//        leftDiceNumber = leftDiceNumber+1
//        rightDiceNumber = rightDiceNumber-1
        
        //-----------------------------------------------------------------------------------------------------
        // Better way of incrementing and decrementing a variable value
//        leftDiceNumber += 1
//        rightDiceNumber -= 1
        
        //-----------------------------------------------------------------------------------------------------
        //Creating a random number
//        Int.random(in: 1...10)

        //-----------------------------------------------------------------------------------------------------
        //Creating a random number for the dice to keep it changing and never ending
//        diceImageView1.image = [UIImage(imageLiteralResourceName: "DiceOne"),
//                                UIImage(imageLiteralResourceName: "DiceTwo"),
//                                UIImage(imageLiteralResourceName: "DiceThree"),
//                                UIImage(imageLiteralResourceName: "DiceFour"),
//                                UIImage(imageLiteralResourceName: "DiceFive"),
//                                UIImage(imageLiteralResourceName: "DiceSix")][Int.random(in: 0...5)]
//
//        diceImageView2.image = [UIImage(imageLiteralResourceName: "DiceOne"),
//                                UIImage(imageLiteralResourceName: "DiceTwo"),
//                                UIImage(imageLiteralResourceName: "DiceThree"),
//                                UIImage(imageLiteralResourceName: "DiceFour"),
//                                UIImage(imageLiteralResourceName: "DiceFive"),
//                                UIImage(imageLiteralResourceName: "DiceSix")][Int.random(in: 0...5)]
        
        //-----------------------------------------------------------------------------------------------------
        //To avoid writing the array twice we can just write it once and then call it multiple times
        
        //We are not changing the value of the variable diceArray hence we are making it a constant with data type "let"
//        let diceArray = [UIImage(imageLiteralResourceName: "DiceOne"),
//                        UIImage(imageLiteralResourceName: "DiceTwo"),
//                        UIImage(imageLiteralResourceName: "DiceThree"),
//                        UIImage(imageLiteralResourceName: "DiceFour"),
//                        UIImage(imageLiteralResourceName: "DiceFive"),
//                        UIImage(imageLiteralResourceName: "DiceSix")]
//
//        diceImageView1.image = diceArray[Int.random(in: 0...5)]
//        diceImageView2.image = diceArray[Int.random(in: 0...5)]
        
        //-----------------------------------------------------------------------------------------------------
        //Better way to get random value from a list of array
        
        let diceArray = [UIImage(imageLiteralResourceName: "DiceOne"),
                        UIImage(imageLiteralResourceName: "DiceTwo"),
                        UIImage(imageLiteralResourceName: "DiceThree"),
                        UIImage(imageLiteralResourceName: "DiceFour"),
                        UIImage(imageLiteralResourceName: "DiceFive"),
                        UIImage(imageLiteralResourceName: "DiceSix")]
        
        diceImageView1.image = diceArray.randomElement()
        diceImageView2.image = diceArray.randomElement()
        
    }
}

