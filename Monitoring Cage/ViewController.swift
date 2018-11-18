//
//  ViewController.swift
//  Monitoring Cage
//
//  Created by Muhammad Waziruddin Akbar on 09/11/18.
//  Copyright © 2018 Muhammad Waziruddin Akbar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

 @IBOutlet weak var logButton: UIButton!
 @IBOutlet weak var signButton: UIButton!
 @IBOutlet weak var byeView: UIView!
 @IBAction func exitTap(_ sender: UIButton) {
  
  UIView.animate(withDuration: 1.2, delay: 0.0, options : .curveLinear, animations: {
   self.byeView.isHidden = false
   self.byeView.alpha = 1.0
  }, completion: { finished in
   exit(0)
  })
 }
 @IBAction func logView(_ sender: UIButton) {
  let log = self.storyboard?.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
  
  self.navigationController?.pushViewController(log, animated: true)
 }
 @IBAction func createView(_ sender: UIButton) {
  let cret = self.storyboard?.instantiateViewController(withIdentifier: "CreateViewController") as! CreateViewController
  
  self.navigationController?.pushViewController(cret, animated: true)
 }
 
 override func viewDidLoad() {
  super.viewDidLoad()
  // Do any additional setup after loading the view, typically from a nib.
 }
 
 override func viewWillAppear(_ animated: Bool) {
  super.viewWillAppear(animated)
  
  self.byeView.isHidden = true
  
  self.logButton.layer.cornerRadius = 26
  self.logButton.layer.borderWidth = 1
  self.logButton.layer.borderColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
  self.signButton.layer.cornerRadius = 26
  self.signButton.layer.borderWidth = 1
  self.signButton.layer.borderColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
 }


}

