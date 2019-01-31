//
//  GuardOptionalBindingViewController.swift
//  Swift-Deily-Tips
//
//  Created by LinkE on 2018/12/5.
//  Copyright © 2018年 dev. All rights reserved.
//

import UIKit

class GuardOptionalBindingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    private func fetchContents() {
        URLSession.shared.dataTask(with: URL(string: "https://beeth0ven.github.io/RxSwift-Chinese-Documentation/")!) { [weak self] (data, response, error) in
            guard let self = self else {return}
            self.test()
        }
    }
    
    private func createloadMoreRequest(content: String?) {
        guard let content = content else {
            return
        }
        print("\(content)")
    }

    
    fileprivate func test(){
        print(#function)
    }
}

