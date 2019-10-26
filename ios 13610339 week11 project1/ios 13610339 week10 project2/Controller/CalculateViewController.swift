//
//  ViewController.swift
//  ios 13610339 week10 project2
//
//  Created by Wutiporn Fungkajorn on 19/10/2562 BE.
//  Copyright © 2562 Wutiporn Fungkajorn. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    //Global Variable คือ ตัวแปรที่ใช้ร่วมกันในคลาส func ชื่อสามารถเรียกใช้ได้
//    var bmiValueCal = "0"
    var calculateBrain = CalbalateBrain()
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        
        let height = String(format: "%.2f", sender.value)
        heightLabel.text = "\(height) M"
        
    }
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        
//        print(sender.value)
//        print(String(format: "%.2f", sender.value))
//        print(String(format: "%.0f", sender.value))
        
        let weight = String(format: "%.0f", sender.value)
        weightLabel.text = "\(weight) Kg."
        
    }
    
    @IBAction func calculatePressed(_ sender: Any) {
        
        let heightFormUser = heightSlider.value
        let weightFormUser = weightSlider.value
        
        calculateBrain.calculateBMI(height: heightFormUser, weight: weightFormUser)
//        let bmi = weightFormUser  / (heightFormUser  * heightFormUser )
//        print(bmi)
        
//        self.performSegue(withIdentifier: "goToResult", sender: self)
                performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    
    @IBAction func heartPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goToCredit", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "goToResult"{
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculateBrain.getBMIValue()
            destinationVC.advice = calculateBrain.getAdvice()
            destinationVC.color = calculateBrain.getColor()
//            destinationVC.bmiValue = bmiValueCal
            //ชื่อ object.ชื่อตัวแปร = ค่าที่ต้องการ set ให้
            
        }//end if result
        
        if segue.identifier == "goToCredit"{
            let CreditVC = segue.destination as! CreditViewController
            CreditVC.fullname = "Wutiporn Fungkajorn"
            
        }//end if credit
        
    }//end func prepare
    
}//end class

