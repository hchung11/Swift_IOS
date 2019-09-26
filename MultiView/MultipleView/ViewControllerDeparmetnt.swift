//
//  ViewControllerDeparmetnt.swift
//  MultipleView
//
//  Created by Jerry Zacharias on 9/17/19.
//  Copyright © 2019 Hyun Shik Chung. All rights reserved.
//

import UIKit

class ViewControllerDeparmetnt: UIViewController {

    @IBOutlet weak var editSegmentCon: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    func departmentSwich() -> String
    {
        var sendSome:String?
        switch editSegmentCon.selectedSegmentIndex {
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
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        let goToSecView = segue.destination as! ViewControllerSec
        goToSecView.deparmentt = departmentSwich()
        
    }
    @IBAction func editDepartmentCloseButton(_ sender: Any) {
        self.dismiss(animated: true)
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
