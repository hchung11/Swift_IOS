//
//  ViewController.swift
//  bmiCalculator
//
//  Created by Chung, Hyun Shik on 9/9/19.
//  Copyright © 2019 Chung, Hyun Shik. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Text Field
    @IBOutlet weak var weightText: UITextField!
    @IBOutlet weak var heighFtText: UITextField!
    @IBOutlet weak var heightInText: UITextField!
    
    //lable
    var txt = "BMI:0.00"
    var txt2 = "BMI Category"
    @IBOutlet weak var bmiLable: UILabel!
    @IBOutlet weak var whatIsIt: UILabel!
    @IBOutlet weak var imageView: UIImageView!
   
    //funcation that calulate BMI
    func BMICalculator(mass:Double, height:Double) -> Double {
        return Double(703 * (mass/pow(height, 2)))
    }
    //feet to inches
    func feetToInches(feet: Double) -> Double {
        return feet * 12
    }
    
    
    @IBAction func buttonCalculator(_ sender: UIButton) {
    //initalize alert method.
    let alert = UIAlertController(title: "Wrong", message: "Wrong Key!! Enter Number!!!", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: NSLocalizedString("Wrong", comment: "Default action"), style: .default, handler: {_ in
            NSLog("The \"OK\" alert occured."        )}))
        //useing "if let" in case there is nil so that we don't get error.
        if let weight = Double(weightText.text!){
            if let heighFeet = Double(heighFtText.text!){
                if let heightIn = Double(heightInText.text!){
                    let fusionIn:Double = feetToInches(feet: heighFeet) + heightIn
                    let resultBMI = BMICalculator(mass: weight, height: fusionIn)
                    //change to 2 decimal
                    let txtBmi:String = "BMI: \(String(format:"%.02f", resultBMI))"
                    bmiLable.text = txtBmi
                    
                    if resultBMI < 18.5{
                        whatIsIt.text = "Underweight"
                        //change image
                        imageView.image = UIImage(named: "underweight")
                    } else if resultBMI >= 18.5 && resultBMI < 25 {
                        whatIsIt.text = "Normal"
                        //change image
                        imageView.image = UIImage(named: "normal")
                    } else if resultBMI >= 25 && resultBMI < 30 {
                        whatIsIt.text = "Overweight"
                        //change image
                        imageView.image = UIImage(named: "overweight")
                    } else if resultBMI >= 30{
                        whatIsIt.text = "Obese"
                        //change image
                        imageView.image = UIImage(named: "obese")
                    }
                    
                }else{
                    //if you get nil or wrong key this the alert method active
                  self.present(alert, animated: true, completion: nil)
                    
                }
            }else{
               self.present(alert, animated: true, completion: nil)
               
            }
            
        }else{
            self.present(alert, animated: true, completion: nil)
            
        }

    }
    //clear button
    @IBAction func clearButton(_ sender: UIButton) {
        
        weightText.text = ""
        heightInText.text = ""
        heighFtText.text = ""
        bmiLable.text = txt
        whatIsIt.text = txt2
        imageView.image = nil
    




}

}
