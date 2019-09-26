//
//  ViewControllerSec.swift
//  MultipleView
//
//  Created by Jerry Zacharias on 9/17/19.
//  Copyright © 2019 Hyun Shik Chung. All rights reserved.
//

import UIKit

class ViewControllerSec: UIViewController {
    var name:String?
    var email:String?
    var pasWord:String?
    var deparmentt:String?
    
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var passwordLable: UILabel!
    @IBOutlet weak var departLable: UILabel!
    
    @IBOutlet weak var showHideButton: UIButton!
    
    
    func stringToStar() -> String {
        let countPassword = pasWord?.count
        return String(repeating: "*", count: countPassword!)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if name != "" && email != "" && pasWord != ""{
            self.nameLabel.text = name
            self.emailLabel.text = email
            self.passwordLable.text = stringToStar()
            self.departLable.text = deparmentt
        }else{
            self.nameLabel.text = "Not set to any name"
        }
        // Do any additional setup after loading the view.
    }
    
    @IBAction func showButton(_ sender: UIButton) {
        switch showHideButton.currentTitle {
        case "hide":
            self.passwordLable.text = stringToStar()
            sender.setTitle("Show", for: .normal)
        case "Show":
            
            self.passwordLable.text = pasWord
            sender.setTitle("hide", for: .normal)
        default:
            break
        }

    }
    @IBAction func unwindToVC2(unwindSegue: UIStoryboardSegue) {
        if name != "" && stringToStar() != "" && deparmentt != "" && email != ""
{
        self.nameLabel.text = name
        self.passwordLable.text = stringToStar()
        self.departLable.text = deparmentt
        self.emailLabel.text = email
        }
        
    }
    @IBAction func dismissToMain(_ sender: Any) {
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
