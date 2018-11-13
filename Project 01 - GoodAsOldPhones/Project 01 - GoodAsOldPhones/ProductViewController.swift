//
//  ProductViewController.swift
//  Project 01 - GoodAsOldPhones
//
//  Created by LinkE on 2018/11/8.
//  Copyright © 2018年 dev. All rights reserved.
//

import UIKit

class ProductViewController: UIViewController {
    
    @IBOutlet weak var productImageView: UIImageView!
    @IBOutlet weak var productNameLabel: UILabel!
    
    var product: Product?


    override func viewDidLoad() {
        super.viewDidLoad()

        productNameLabel.text = product?.name
        if let imageName = product?.fullscreenImageName {
            productImageView.image = UIImage(named: imageName)
        }
    }
    

    @IBAction func addToCartButtonDidTap(_ sender: AnyObject){
        print("Add to cart successfully")
    }

}
