//
//  ViewControllerEditName.swift
//  MultipleView
//
//  Created by Jerry Zacharias on 9/17/19.
//  Copyright © 2019 Hyun Shik Chung. All rights reserved.
//

import UIKit

class ViewControllerEditName: UIViewController {

    @IBOutlet weak var updateNameButton: UIButton!
    var name:String?
    @IBOutlet weak var editNameTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func editNameCloseButton(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        let goToSecView = segue.destination as! ViewControllerSec
        goToSecView.name = self.editNameTextField.text
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
