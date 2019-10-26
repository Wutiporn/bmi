//
//  ResultViewController.swift
//  ios 13610339 week10 project2
//
//  Created by Wutiporn Fungkajorn on 19/10/2562 BE.
//  Copyright © 2562 Wutiporn Fungkajorn. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    //propoties
    var bmiValue: String?
    var advice: String?
    var color: UIColor?

    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        view.backgroundColor = color
        //print(bmiValue)
        // Do any additional setup after loading the view.
    }
    

    @IBAction func recalculatePressed(_ sender: UIButton) {
        
        self.dismiss(animated: true, completion: nil)
        
    }
    
}
