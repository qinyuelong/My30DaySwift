//
//  Product.swift
//  Project 01 - GoodAsOldPhones
//
//  Created by LinkE on 2018/11/8.
//  Copyright © 2018年 dev. All rights reserved.
//

import Foundation

class Product {
    var name: String?
    var cellImageName: String?
    var fullscreenImageName: String?
    
    init(name: String, cellImageName: String, fullscreenImageName: String) {
        self.name = name
        self.cellImageName = cellImageName
        self.fullscreenImageName = fullscreenImageName
    }
    
}
