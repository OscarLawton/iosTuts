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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func showAlert(){
        let message = "The value of the slider is now: \(currentValue)"
        
        let alert = UIAlertController(title: "Hello!", message: message, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func sliderMoved( slider: UISlider){
        print("The value of the slider is now: \(slider.value * 100)")
        currentValue = Int(round(slider.value * 100));
    }
   //Complete vid 4 or folder 3
}

