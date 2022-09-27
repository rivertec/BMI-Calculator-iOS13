//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var labelHeight: UILabel!
    @IBOutlet weak var labelWeight: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func sliderHeightAction(_ sender: UISlider) {
        labelHeight.text = "\(String(format: "%.2f", sender.value)) M"
    }
    
    @IBAction func sliderWeightAction(_ sender: UISlider) {
        labelWeight.text = "\(String(format: "%.0f", sender.value)) Kg"
    }
    
    



}

