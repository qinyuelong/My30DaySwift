//
//  ViewController.swift
//  ConstraintPriorityDemo
//
//  Created by LinkE on 2018/11/14.
//  Copyright © 2018年 dev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var countryCodeButton: UIButton!
    @IBOutlet weak var userNameTextField: UITextField!
    
    @IBOutlet weak var userNameLeadingConstraint: NSLayoutConstraint!
    @IBOutlet weak var userNameAlignConstraint: NSLayoutConstraint!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func changePriorityButtonDidClick(_ sender: Any) {
        countryCodeButton.isHidden = !countryCodeButton.isHidden
        userNameLeadingConstraint.priority =  countryCodeButton.isHidden ? .defaultLow : .defaultHigh
        userNameAlignConstraint.priority =  countryCodeButton.isHidden ? .defaultHigh : .defaultLow
    }
    
    @IBAction func changeCountryCodeButtonDidClick(_ sender: UIButton) {
        let title = countryCodeButton.titleLabel?.text! == "+86" ?  "+12345678" : "+86"
        countryCodeButton.setTitle(title, for: .normal)
    }
    
}

