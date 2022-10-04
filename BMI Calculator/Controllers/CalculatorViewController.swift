//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    @IBOutlet weak var labelHeight: UILabel!
    @IBOutlet weak var labelWeight: UILabel!
    
    var calculatorBrain = CalculatorBrain()
    var height : Float = 1.5
    var weight : Float = 100
    var result : BMI = BMI(bmi: nil, advice: nil, uiColor: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func sliderHeightAction(_ sender: UISlider) {
        height = sender.value
        labelHeight.text = "\(String(format: "%.2f", height))"
    }
    
    @IBAction func sliderWeightAction(_ sender: UISlider) {
        weight = sender.value
        labelWeight.text = "\(String(format: "%.0f", weight))"
    }
    
    @IBAction func calcButtonPressed(_ sender: UIButton) {
        
        result = calculatorBrain.calcBmi(height, weight)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = result
        }
    }



}

