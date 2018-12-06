//
//  FilterFunctionViewController.swift
//  Swift-Deily-Tips
//
//  Created by LinkE on 2018/12/5.
//  Copyright © 2018年 dev. All rights reserved.
//

import UIKit

class FilterFunctionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let digits = [1, 4, 10, 15]
        _ = digits.filter{ $0 % 2 == 0}
        
        let cast = ["Vivien", "Marlon", "kim"]
        _ = cast.filter{ $0.count < 5 }
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
