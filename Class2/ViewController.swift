//
//  ViewController.swift
//  Class2
//
//  Created by english on 2024-01-22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Ibimage01: UIImageView!
    @IBOutlet weak var Ibimage02: UIImageView!
    var newButton1 = 0
    var newButton2 = 5
    var newflag = 0
    let diceImages = [UIImage(named:"DiceOne"),UIImage(named:"DiceTwo"),UIImage(named:"DiceThree"),UIImage(named:"DiceFour"),UIImage(named:"DiceFive"),UIImage(named:"DiceSix")]
    
    @IBAction func IButton01(_ sender: Any) {
        
        
        if (newButton1 == 0)
        {newflag = 0}
        else if (newButton1 == 5)
        {newflag = 1}
                
       if (newflag == 0) //increase
        {
           newButton1 = newButton1 + 1
           newButton2 = newButton2 - 1
        }
        else
        {
           newButton1 = newButton1 - 1
           newButton2 = newButton2 + 1
        }
        Ibimage01.image = diceImages[newButton1]
        
        Ibimage02.image = diceImages[newButton2]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // Ibimage01.image = UIImage (named: "DiceOne")
        // Ibimage02.image = UIImage (named: "DiceTwo")
        Ibimage01.image = diceImages[Int.random(in: 0...5)]
        Ibimage02.image = diceImages[Int.random(in: 0...5)]
    }
}


