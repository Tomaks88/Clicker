//
//  ViewController.swift
//  Clicker
//
//  Created by Максим Томилов on 02.11.2019.
//  Copyright © 2019 Tomily. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var countClick: UILabel!
    private var click = 0
    
    @IBAction func clickButton(_ sender: Any) {
        click += 1
        countClick.text = "\(click)"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        countClick.text = "0"
        
    }

    
}

