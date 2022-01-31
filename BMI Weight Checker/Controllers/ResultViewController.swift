//
//  RecalculateViewController.swift
//  BMI Weight Checker
//
//  Created by Barnabas Bala on 30.01.2022.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue: String?
    var advice: String?
    var color: UIColor?

    @IBOutlet weak var bmiLable: UILabel!
    @IBOutlet weak var adviceLable: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bmiLable.text = bmiValue
        adviceLable.text = advice
        view.backgroundColor = color
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}

