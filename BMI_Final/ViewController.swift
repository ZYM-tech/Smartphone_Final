//
//  ViewController.swift
//  BMI_Final
//
//  Created by 张一鸣 on 5/3/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lblBMI: UILabel!
    @IBOutlet weak var txtWeight: UITextField!
    @IBOutlet weak var txtFeet: UITextField!
    @IBOutlet weak var txtInches: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    @IBAction func BMI_Action(_ sender: Any) {
        guard let weight = txtWeight.text else {return}
        guard let feet = txtFeet.text else {return}
        guard let inches = txtInches.text else {return}
        
        let w = Double(weight)!
        let f = Double(feet)!
        let inch  = Double(inches)!
        
        let height = f *  12 + inch
        let ans = 703 * w/(height * height)
        let bmi = Double(round(100*ans)/100)
        
        
        if(bmi < 18.5){
            //Underweight
            self.lblBMI.text = "BMI: \(bmi)  You are Underweight"
            
        }else if(bmi < 25){
            //Healthy weight
            self.lblBMI.text = "BMI: \(bmi)  You are Healthy Weight"
            
        }else if(bmi < 30){
            //Overweight
            self.lblBMI.text = "BMI: \(bmi)  You are Overweight"
            
        }else if(bmi >= 30){
            //obese
            self.lblBMI.text = "BMI: \(bmi)  You are Obese"
        }
    }
    
}

