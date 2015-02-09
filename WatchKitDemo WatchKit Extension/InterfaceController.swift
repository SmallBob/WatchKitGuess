//
//  InterfaceController.swift
//  WatchKitDemo WatchKit Extension
//
//  Created by 王凯 on 15/2/9.
//  Copyright (c) 2015年 王凯. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    
    @IBOutlet weak var guessSlider: WKInterfaceSlider!
    
    @IBOutlet weak var guessLabel: WKInterfaceLabel!
    
    
    @IBOutlet weak var resultLabel: WKInterfaceLabel!
    
    var guessNumber = 3
    
    @IBAction func undateGuess(value: Float) {
        
       guessNumber = Int(value * 5)
        
        guessLabel.setText("Your guess :\(guessNumber)")
        
        
    }
    
    
    @IBAction func startGuess() {
        
        var randomNumber = Int(arc4random_uniform(6))
        
        if(guessNumber == randomNumber){
        
            resultLabel.setText("Correct. You Win!")
            
        }else{
            resultLabel.setText("Wrong.The number is\(randomNumber)")
            
        
        }
        
        
        
    }
    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
