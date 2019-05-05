//
//  ViewController.swift
//  BullsEye
//
//  Created by crux on 29/04/2019.
//  Copyright © 2019 crux. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
    var currentValue: Int = 0
    var targetValue: Int = 0
    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var targetVL: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let roundedValue = slider.value.rounded();
        //currentValue = Int(round(slider.value * 100));
        currentValue = Int(roundedValue)
        // Do any additional setup after loading the view, typically from a nib.
        startNewRound()
    }
    
    @IBAction func showAlert(){
        var difference: Int
        //First soloution
        /*if currentValue > targetValue{
            difference = currentValue - targetValue;
        } else if (currentValue < targetValue){
            difference = targetValue - currentValue;
        } else {
            difference = 0
        }*/
        difference = currentValue - targetValue;
        if difference < 0{
            difference *= -1
        } 
        let message = "The value of the slider is now: \(currentValue)" +
        "\n The target value is: \(targetValue)" +
        "\n The difference is: \(difference)"
        
        let alert = UIAlertController(title: "Hello!", message: message, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
        
        startNewRound()
    }
    
    @IBAction func sliderMoved( slider: UISlider){
        print("The value of the slider is now: \(slider.value * 100)")
        let roundedVaule = slider.value.rounded()
        //currentValue = Int(round(slider.value * 100));
        currentValue = Int(roundedVaule)
    }
   
    func startNewRound(){
        targetValue = Int.random(in: 1...100)
        currentValue = 50
        slider.value = Float(currentValue)
        targetVL.text = String(targetValue);
    }
}

