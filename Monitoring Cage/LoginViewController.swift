//
//  LoginViewController.swift
//  Monitoring Cage
//
//  Created by Muhammad Waziruddin Akbar on 10/11/18.
//  Copyright © 2018 Muhammad Waziruddin Akbar. All rights reserved.
//

import UIKit
//import ReactiveKit

class LoginViewController: UIViewController {

 @IBOutlet weak var emailText: UITextField!
 @IBOutlet weak var passText: UITextField!
 @IBOutlet weak var logButton: UIButton!
 @IBOutlet weak var cancelButton: UIButton!
 
 override func viewDidLoad() {
  super.viewDidLoad()
  // Do any additional setup after loading the view.
 }
 override func viewWillAppear(_ animated: Bool) {
  super.viewWillAppear(animated)
  
  self.emailText.layer.borderWidth = 1
  self.emailText.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
  self.passText.layer.borderWidth = 1
  self.passText.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
  
  let border = CALayer()
  let width = CGFloat(2.0)
  border.borderColor = UIColor.darkGray.cgColor
  border.frame = CGRect(x: 0, y: self.emailText.frame.size.height - width, width: self.emailText.frame.size.width, height: self.emailText.frame.size.height)
  
  border.borderWidth = width
  self.emailText.layer.addSublayer(border)
  self.emailText.layer.masksToBounds = true
  
  let border1 = CALayer()
  let width1 = CGFloat(2.0)
  border1.borderColor = UIColor.darkGray.cgColor
  border1.frame = CGRect(x: 0, y: self.passText.frame.size.height - width, width: self.passText.frame.size.width, height: self.emailText.frame.size.height)
  
  border1.borderWidth = width1
  self.passText.layer.addSublayer(border1)
  self.passText.layer.masksToBounds = true
  
  self.logButton.layer.cornerRadius = 26
  self.cancelButton.layer.borderColor = #colorLiteral(red: 0.1797923744, green: 0.2885507345, blue: 0.3593635559, alpha: 1)
  self.cancelButton.layer.borderWidth = 1
  self.cancelButton.layer.cornerRadius = 26
  
 }
 @IBAction func cancelTap(_ sender: UIButton) {
  self.navigationController?.popViewController(animated: true)
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
