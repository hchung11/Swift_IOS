//
//  ViewController.swift
//  MultipleView
//
//  Created by Jerry Zacharias on 9/17/19.
//  Copyright © 2019 Hyun Shik Chung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
//textfield

    @IBOutlet weak var passWordTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var departSag: UISegmentedControl!
    
    
    func departmentSwich() -> String
    {
        var sendSome:String?
        switch departSag.selectedSegmentIndex {
        case 0:
            sendSome = "CS"
        case 1:
            sendSome = "SIS"
        case 2:
            sendSome = "BIO"
            
        default:
            break
        }
        return sendSome!
    }
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        let goToSecView = segue.destination as! ViewControllerSec
        
        goToSecView.name = nameTextField.text
        goToSecView.email = emailTextField.text
        goToSecView.pasWord = passWordTextField.text
        goToSecView.deparmentt = departmentSwich()
        
        
    }
    
    //between viewControl '->'
    //make it sure that user fill out all the textfield
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        
        if identifier == "segueFromHomeToProfile"{
            if self.nameTextField.text == "" || self.emailTextField.text == "" || self.passWordTextField.text == ""
            {
                let alert = UIAlertController(title: "Error", message: "Please Fill out Text Field !", preferredStyle: .alert)
                
                alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
                self.present(alert, animated: true, completion: nil)
                return false
            }else{
                return true
            }
            
        }
        return false
        
    }

}

