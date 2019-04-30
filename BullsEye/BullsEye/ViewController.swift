//
//  ViewController.swift
//  BullsEye
//
//  Created by crux on 29/04/2019.
//  Copyright © 2019 crux. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func showAlert(){
        let alert = UIAlertController(title: "Hello!", message: "this is my first app", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func sliderMoved(slider: UISlider){
        print("The value of the slider is now: \(slider.value)")
    }
   
}

