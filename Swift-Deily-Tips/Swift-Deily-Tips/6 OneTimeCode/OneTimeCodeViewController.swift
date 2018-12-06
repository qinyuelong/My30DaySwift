//
//  OneTimeCodeViewController.swift
//  Swift-Deily-Tips
//
//  Created by LinkE on 2018/12/5.
//  Copyright © 2018年 dev. All rights reserved.
//

import UIKit

class OneTimeCodeViewController: UIViewController {
    
    let optTextField = UITextField()

    override func viewDidLoad() {
        super.viewDidLoad()

        if #available(iOS 12.0, *) {
            optTextField.textContentType = .oneTimeCode
        } else {
            // Fallback on earlier versions
        }
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
