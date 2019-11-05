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
    let userDefaults: UserDefaults = UserDefaults.standard
    
    @IBAction func clickButton(_ sender: Any) {
        click += 1
        countClick.text = "\(click)"
        userDefaults.setValue(click, forKey: "clickValue")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        countClick.adjustsFontSizeToFitWidth = true
        countClick.minimumScaleFactor = 0.2
        let saveClick = userDefaults.integer(forKey: "clickValue")
        if saveClick != 0 {
            click = saveClick
        }
        countClick.text = "\(click)"
    }
    
    @IBAction func ClearClick(_ sender: Any) {
        click = 0
        countClick.text = "\(click)"
    }
}

