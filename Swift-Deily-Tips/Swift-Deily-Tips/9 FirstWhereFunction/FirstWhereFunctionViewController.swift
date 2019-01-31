//
//  FirstWhereFunctionViewController.swift
//  Swift-Deily-Tips
//
//  Created by LinkE on 2018/12/10.
//  Copyright © 2018年 dev. All rights reserved.
//

import UIKit

class FirstWhereFunctionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let numbers = [3, 9, -2 , -5, 10]
        if let firstNegative = numbers.first(where: {$0 < 0}) {
            print("The first negative number is \(firstNegative)")
            // Prints "The first negative number is -2"
        }
        
        
    }
    

}
