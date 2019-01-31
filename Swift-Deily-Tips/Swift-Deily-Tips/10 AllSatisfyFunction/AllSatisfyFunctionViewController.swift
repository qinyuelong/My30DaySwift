//
//  AllSatisfyFunctionViewController.swift
//  Swift-Deily-Tips
//
//  Created by LinkE on 2018/12/10.
//  Copyright © 2018年 dev. All rights reserved.
//

import UIKit

class AllSatisfyFunctionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let names = ["Sofia", "Camilla", "Mateo"]
        let allHaveAtLeastFive = names.allSatisfy{$0.count > 5}
        print(allHaveAtLeastFive)
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
