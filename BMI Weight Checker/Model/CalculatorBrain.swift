//
//  CalculatorBrain.swift
//  BMI Weight Checker
//
//  Created by Barnabas Bala on 30.01.2022.
//

import Foundation
import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / (height * height)

        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: #colorLiteral(red: Float(0.4745098054), green: Float(0.8392156959), blue: Float(0.9764705896), alpha: Float(1)))
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: #colorLiteral(red: Float(0.721568644), green: Float(0.8862745166), blue: Float(0.5921568871), alpha: Float(1)))
        } else {
                bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: #colorLiteral(red: Float(0.9098039269), green: Float(0.4784313738), blue: Float(0.6431372762), alpha: Float(1)))
        }
    }
}
