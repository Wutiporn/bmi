//
//  CreditViewController.swift
//  ios 13610339 week10 project2
//
//  Created by Wutiporn Fungkajorn on 19/10/2562 BE.
//  Copyright © 2562 Wutiporn Fungkajorn. All rights reserved.
//

import UIKit

class CreditViewController: UIViewController {

    var fullname = "fullname"
    
    @IBOutlet weak var fullNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        fullNameLabel.text = fullname
        // Do any additional setup after loading the view.
    }
    
    @IBAction func backPressed(_ sender: UIButton) {
        
        self.dismiss(animated: true, completion: nil)
        
    }
    
   

}
