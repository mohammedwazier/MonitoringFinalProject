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
//    print("Exit")
   exit(0)
  })
 }
 
 override func viewDidLoad() {
  super.viewDidLoad()
  // Do any additional setup after loading the view, typically from a nib.
 }
 
 override func viewWillAppear(_ animated: Bool) {
  super.viewWillAppear(animated)
  
  self.byeView.alpha = 0
  self.byeView.isHidden = true
  
  
  self.logButton.layer.cornerRadius = 26
  self.signButton.layer.cornerRadius = 26
 }


}

