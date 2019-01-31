//
//  SimpleDeferFunctionViewController.swift
//  Swift-Deily-Tips
//
//  Created by LinkE on 2018/12/10.
//  Copyright © 2018年 dev. All rights reserved.
//

import UIKit

class SimpleDeferFunctionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        simpleDefer()
        
    }
    

    func simpleDefer() {
        defer {
            print("End of The Function")
        }
        
        print("Main boday of the simpleDefer function")
    }
   
}
