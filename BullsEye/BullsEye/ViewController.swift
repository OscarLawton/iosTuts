
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
    var score = 0
    var round = 0
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var targetLabel: UILabel!
    @IBOutlet weak var scoreLable: UILabel!
    @IBOutlet weak var roundLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let roundedValue = slider.value.rounded();
        //currentValue = Int(round(slider.value * 100));
        currentValue = Int(roundedValue)
        // Do any additional setup after loading the view, typically from a nib.
        startNewRound()
    }
    
    @IBAction func showAlert(){
        //var difference: Int
        //First soloution
        /*if currentValue > targetValue{
         difference = currentValue - targetValue;
         } else if (currentValue < targetValue){
         difference = targetValue - currentValue;
         } else {
         difference = 0
         }*/
        
        //Second soloution
        /*difference = currentValue - targetValue;
         if difference < 0{
         difference *= -1
         }*/
        
        //End soloution
        let difference = abs(targetValue - currentValue);
        var points = 100 - difference;
        score += points
        let title: String
        if difference == 0{
            title = "Perfect!"
            score += 100
        } else if difference < 2{
            title = "Almost! Just one away!"
            score += 50
        } else if difference < 5 {
            title = "Very close!"
        } else if difference < 10 {
            title = "Close"
        } else {
            title = "Not even close"
        }
        let message: String
        if (round < 10){
            message = "Your scored \(points) points!"
        } else {
            message = "Game over you scored \(points) points!"
        }
        
        /*let message = "The value of the slider is now: \(currentValue)" +
         "\n The target value is: \(targetValue)" +
         "\n The difference is: \(difference)"*/
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
        if(round < 10){
            startNewRound()
        }
        
        
        
    }
    
    @IBAction func sliderMoved( slider: UISlider){
        print("The value of the slider is now: \(slider.value * 100)")
        let roundedVaule = slider.value.rounded()
        //currentValue = Int(round(slider.value * 100));
        currentValue = Int(roundedVaule)
    }
    
    func startNewRound(){
        round += 1
        targetValue = Int.random(in: 1...100)
        currentValue = 50
        slider.value = Float(currentValue)
        targetLabel.text = String(targetValue);
        scoreLable.text = String(score);
        roundLable.text = String(round);
    }
    //Completed folder 4 vid 4
}


