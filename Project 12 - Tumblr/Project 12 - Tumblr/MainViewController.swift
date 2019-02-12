//
//  MainViewController.swift
//  Project 12 - Tumblr
//
//  Created by LinkE on 2019/1/31.
//  Copyright © 2019年 dev. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    let transitionManager = TransitionManager()

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.toolbar.clipsToBounds = true
    }
    

    @IBAction func unwindToMainViewController(_ sender: UIStoryboardSegue) {
        dismiss(animated: true, completion: nil)
    }

}
