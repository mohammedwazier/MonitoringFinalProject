//
//  CreateViewController.swift
//  Monitoring Cage
//
//  Created by Muhammad Waziruddin Akbar on 10/11/18.
//  Copyright © 2018 Muhammad Waziruddin Akbar. All rights reserved.
//

import UIKit

class CreateViewController: UIViewController {
 @IBOutlet weak var btnCancel: UIButton!
 @IBOutlet weak var btnReg: UIButton!
 @IBOutlet weak var usernameText: UITextField!
 @IBOutlet weak var emailText: UITextField!
 @IBOutlet weak var passwordText: UITextField!
 
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
 
 override func viewWillAppear(_ animated: Bool) {
  super.viewWillAppear(animated)
  
  self.usernameText.layer.borderWidth = 1
  self.usernameText.layer.borderColor = #colorLiteral(red: 0.1797923744, green: 0.2885507345, blue: 0.3593635559, alpha: 0)
  self.emailText.layer.borderWidth = 1
  self.emailText.layer.borderColor = #colorLiteral(red: 0.1797923744, green: 0.2885507345, blue: 0.3593635559, alpha: 0)
  self.passwordText.layer.borderWidth = 1
  self.passwordText.layer.borderColor = #colorLiteral(red: 0.1797923744, green: 0.2885507345, blue: 0.3593635559, alpha: 0)
  
  let border = CALayer()
  let width = CGFloat(2.0)
  border.borderColor = UIColor.white.cgColor
  border.frame = CGRect(x: 0, y: self.usernameText.frame.size.height - width, width: self.usernameText.frame.size.width, height: self.usernameText.frame.size.height)
  
  border.borderWidth = width
  self.usernameText.layer.addSublayer(border)
  self.usernameText.layer.masksToBounds = true
  
  let border1 = CALayer()
  let width1 = CGFloat(2.0)
  border1.borderColor = UIColor.white.cgColor
  border1.frame = CGRect(x: 0, y: self.emailText.frame.size.height - width1, width: self.emailText.frame.size.width, height: self.emailText.frame.size.height)
  
  border1.borderWidth = width1
  self.emailText.layer.addSublayer(border1)
  self.emailText.layer.masksToBounds = true
  
  let border2 = CALayer()
  let width2 = CGFloat(2.0)
  border2.borderColor = UIColor.white.cgColor
  border2.frame = CGRect(x: 0, y: self.passwordText.frame.size.height - width2, width: self.passwordText.frame.size.width, height: self.passwordText.frame.size.height)
  
  border2.borderWidth = width2
  self.passwordText.layer.addSublayer(border2)
  self.passwordText.layer.masksToBounds = true
  
  
  
  
  self.btnCancel.layer.cornerRadius = 26
  self.btnCancel.layer.borderWidth = 1
  self.btnCancel.layer.borderColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
  self.btnReg.layer.cornerRadius = 26
 }
 @IBAction func cancelTapp(_ sender: UIButton) {
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
