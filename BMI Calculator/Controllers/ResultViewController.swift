//
//  ResultScreenControllerViewController.swift
//  BMI Calculator
//
//  Created by Garam kim on 9/27/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: CalculatorViewController {

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    var bmiValue : BMI?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultLabel.text = String(format: "%.1f", bmiValue?.bmi! ?? "0.0")
        adviceLabel.text = bmiValue?.advice
        view.backgroundColor = bmiValue?.uiColor
    }
    
    @IBAction func recalculateButtonPressed(_ sender: UIButton) {
        
        self.dismiss(animated: true)
        
    }
}
