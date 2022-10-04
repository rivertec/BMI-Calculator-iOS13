//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Garam kim on 9/28/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi : BMI?
    
    let preset : [BMI] = [
        BMI(bmi: 18.5, advice: "Underweight", uiColor: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)),
        BMI(bmi: 24.9, advice: "Normal Weight", uiColor: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)),
        BMI(bmi: 25, advice: "Overweight", uiColor: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)),
        ]
    
    var bmiValue : Float?
    var matchingSet : BMI?
    
    
    mutating func calcBmi(_ height: Float, _ weight: Float) -> BMI {
        
        bmiValue = weight / pow(height, 2)
        matchingSet = preset[getBmiInfo(bmiValue!)]
        
        return BMI(bmi: bmiValue, advice: matchingSet?.advice, uiColor: matchingSet?.uiColor)
    }
    
    
    mutating func getBmiInfo(_ bmiValue: Float) -> Int {
        if bmiValue <= preset[0].bmi! {
            return 0
        } else if bmiValue <= preset[1].bmi! {
            return 1
        } else {
            return 2
        }
    }
}
