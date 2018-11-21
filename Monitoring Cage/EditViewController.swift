//
//  EditViewController.swift
//  Monitoring Cage
//
//  Created by Muhammad Waziruddin Akbar on 20/11/18.
//  Copyright © 2018 Muhammad Waziruddin Akbar. All rights reserved.
//

import UIKit

class EditViewController: UIViewController {
 
 @IBOutlet weak var view1: UIView!
 @IBOutlet weak var view2: UIView!
 
 @IBOutlet weak var maxLvlFeed: UILabel!
 @IBOutlet weak var minLvlFeed: UILabel!
 @IBOutlet weak var maxLvlDrink: UILabel!
 @IBOutlet weak var minLvlDrink: UILabel!
 @IBOutlet weak var maxSlideFeed: UISlider!
 @IBOutlet weak var minSlideFeed: UISlider!
 @IBOutlet weak var maxSlideDrink: UISlider!
 @IBOutlet weak var minSlideDrink: UISlider!
 
 var stateBtn:Bool = false
 var maxValueFood:Int = 0
 var minValueFood:Int = 0
 var maxValueDrink:Int = 0
 var minValueDrink:Int = 0
 
 
 @IBAction func backTap(_ sender: UIButton) {
  self.navigationController?.popViewController(animated: true)
 }
 
 @IBAction func activeManual(_ sender: UISwitch) {
//  print(sender.isOn)
  self.stateBtn = sender.isOn
  if(sender.isOn){
   self.maxSlideFeed.isEnabled = true
   self.minSlideFeed.isEnabled = true
   self.maxSlideDrink.isEnabled = true
   self.minSlideDrink.isEnabled = true
  }else{
   self.maxSlideFeed.isEnabled = false
   self.minSlideFeed.isEnabled = false
   self.maxSlideDrink.isEnabled = false
   self.minSlideDrink.isEnabled = false
  }
 }
 
 @IBAction func maxFeed(_ sender: UISlider) {
  let roundVal = round(sender.value / 10) * 10
  self.maxLvlFeed.text = String(Int(roundVal))
  
  self.maxValueFood = Int(roundVal)
  
  if(Int(roundVal) <= self.minValueFood){
   self.maxSlideFeed.setValue((Float(self.minValueFood)+10), animated: true)
   self.maxLvlFeed.text = String(self.minValueFood+10)
   self.maxValueFood = self.minValueFood+10
  }
 }
 @IBAction func minFeed(_ sender: UISlider) {
  let roundVal = round(sender.value / 10) * 10
  self.minLvlFeed.text = String(Int(roundVal))
  
  self.minValueFood = Int(roundVal)
  if(Int(roundVal) >= self.maxValueFood){
   self.minSlideFeed.setValue((Float(self.maxValueFood)-10), animated: true)
   self.minLvlFeed.text = String(self.maxValueFood-10)
   self.minValueFood = self.maxValueFood-10
  }
 }
 
 
 @IBAction func maxDrink(_ sender: UISlider) {
  let roundVal = round(sender.value / 10) * 10
  self.maxLvlDrink.text = String(Int(roundVal))
  
  self.maxValueDrink = Int(roundVal)
  if(Int(roundVal) <= self.minValueDrink){
   self.maxSlideDrink.setValue((Float(self.minValueDrink)+10), animated: true)
   self.maxLvlDrink.text = String(self.minValueDrink+10)
   self.maxValueDrink = self.minValueDrink+10
  }
 }
 @IBAction func minDrink(_ sender: UISlider) {
  let roundVal = round(sender.value / 10) * 10
  self.minLvlDrink.text = String(Int(roundVal))
  
  self.minValueDrink = Int(roundVal)
  if(Int(roundVal) >= self.maxValueDrink){
   self.minSlideDrink.setValue((Float(self.maxValueDrink)-10), animated: true)
   self.minLvlDrink.text = String(self.maxValueDrink-10)
   self.minValueDrink = self.maxValueDrink-10
  }
 }
 
 
 override func viewDidLoad() {
  super.viewDidLoad()
 }
 override func viewWillAppear(_ animated: Bool) {
  super.viewWillAppear(animated)
  
  view1.layer.shadowOffset = CGSize(width: 1.5, height: 1.5)
  view1.layer.cornerRadius = 2
  view1.layer.shadowOpacity = 0.3
  
  view2.layer.shadowOffset = CGSize(width: 1.5, height: 1.5)
  view2.layer.cornerRadius = 2
  view2.layer.shadowOpacity = 0.3
  
//  print(self.maxSlideFeed.setValue(90.0, animated: true))
  self.maxValueFood = Int(self.maxSlideFeed.value)
  self.minValueFood = Int(self.minSlideFeed.value)
  self.maxValueDrink = Int(self.maxSlideDrink.value)
  self.minValueDrink = Int(self.minSlideDrink.value)
  if(!stateBtn){
   self.maxSlideFeed.isEnabled = false
   self.minSlideFeed.isEnabled = false
   self.maxSlideDrink.isEnabled = false
   self.minSlideDrink.isEnabled = false
  }
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
