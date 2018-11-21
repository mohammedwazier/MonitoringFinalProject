//
//  MainViewController.swift
//  Monitoring Cage
//
//  Created by Muhammad Waziruddin Akbar on 18/11/18.
//  Copyright © 2018 Muhammad Waziruddin Akbar. All rights reserved.
//

import UIKit
import Firebase

class MainViewController: UIViewController {
 
 var ref = DatabaseReference()
 var dbHandler = DatabaseHandle()
 
 @IBOutlet weak var viewBox: UIView!
 @IBOutlet weak var viewBox1: UIView!
 @IBOutlet weak var viewBox2: UIView!
 @IBOutlet weak var viewBox3: UIView!
 
 @IBOutlet weak var nowTemp: UILabel!
 @IBOutlet weak var maxTemp: UILabel!
 @IBOutlet weak var minTemp: UILabel!
 
 @IBOutlet weak var nowAirQual: UILabel!
 @IBOutlet weak var maxAirQual: UILabel!
 @IBOutlet weak var minAirQual: UILabel!
 
 @IBOutlet weak var foodStateLevel: UILabel!
 @IBOutlet weak var foodState: UILabel!
 @IBOutlet weak var foodImageState: UIImageView!
 
 @IBOutlet weak var drinkStateLevel: UILabel!
 @IBOutlet weak var drinkState: UILabel!
 @IBOutlet weak var drinkImageState: UIImageView!
 
 var loadFood: Bool = false
 var loadDrink: Bool = false
 
 var TempVar: Int = 0
 var minTempVar: Int = 100
 var maxTempVar: Int = 0
 var airQualityVar: Int = 0
 var lvlMakanVar: Int = 0
 var lvlMinumVar: Int = 0
 var foodMaxLvlVar: Int = 0
 var foodMinLvlVar: Int = 0
 var foodFillStateVar: Int = 0
 var drinkMaxLvlVar: Int = 0
 var drinkMinLvlVar: Int = 0
 var drinkFillStateVar: Int = 0
 
 @IBAction func editTapped(_ sender: UIButton) {
  
  let editVC = self.storyboard?.instantiateViewController(withIdentifier: "EditViewController") as! EditViewController
  
  self.navigationController?.pushViewController(editVC, animated: true)
  
 }
 func getData(data: String){
  ref = Database.database().reference()
  dbHandler = ref.child(data).observe(.value) { (snapshot) in
   let a: Int = snapshot.value as! Int
   let str = String(a)
   print(str)
   if data == "temp" {
    print("temperature")
    self.nowTemp.text = str + "°"
    self.TempVar = a
    if a < self.minTempVar {
     self.minTempVar = a
     self.minTemp.text = str + "°"
    }else if a > self.maxTempVar {
     self.maxTempVar = a
     self.maxTemp.text = str + "°"
    }
   }else if data == "airQuality" {
    self.nowAirQual.text = str
    self.airQualityVar = a
   }else if data == "lvlMakan" {
    self.lvlMakanVar = a
    self.foodStateLevel.text = str+"%"
//    if {
//     
//    }
    switch a {
    case 10:
     break
    case 20:
     break
    case 30:
     break
    case 40:
     break
    case 50:
     break
    case 60:
     break
    case 70:
     break
    case 80:
     break
    case 90:
     break
    case 100:
     break
    default:
//     return
     break
    }
   }else if data == "lvlMinum" {
    
   }else if data == "foodMaxLvl" {
    
   }else if data == "foodLowLvl" {
    
   }else if data == "foodFillingState" {
    
   }else if data == "drinkMaxLvl" {
    
   }else if data == "drinkLowLvl" {
    
   }else if data == "drinkFillingState" {
    
   }
  }
 }
 
 
 override func viewDidLoad() {
     super.viewDidLoad()
     // Do any additional setup after loading the view.
 }
 override func viewWillAppear(_ animated: Bool) {
  super.viewWillAppear(animated)
  
//  self.nowTemp.text = "40"
  
  self.foodState.isHidden = true
  self.drinkState.isHidden = true
  getData(data: "temp")
  getData(data: "airQuality")
  
  
  viewBox.layer.shadowOffset = CGSize(width: 1.5, height: 1.5)
  viewBox.layer.cornerRadius = 2
  viewBox.layer.shadowOpacity = 0.3
  
  viewBox1.layer.shadowOffset = CGSize(width: 1.5, height: 1.5)
  viewBox1.layer.cornerRadius = 2
  viewBox1.layer.shadowOpacity = 0.3
  
  viewBox2.layer.shadowOffset = CGSize(width: 1.5, height: 1.5)
  viewBox2.layer.cornerRadius = 2
  viewBox2.layer.shadowOpacity = 0.3
  
  viewBox3.layer.shadowOffset = CGSize(width: 1.5, height: 1.5)
  viewBox3.layer.cornerRadius = 2
  viewBox3.layer.shadowOpacity = 0.3
  
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
