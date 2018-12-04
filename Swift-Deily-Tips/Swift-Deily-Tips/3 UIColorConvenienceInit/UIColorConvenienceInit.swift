//
//  UIColorConvenienceInit.swift
//  Swift-Deily-Tips
//
//  Created by LinkE on 2018/12/4.
//  Copyright © 2018年 dev. All rights reserved.
//

import UIKit

extension UIColor {
    convenience  init(r: Int, g: Int, b: Int) {
        self.init(red: CGFloat(r) / 255.0, green: CGFloat(g) / 255.0, blue: CGFloat(b) / 255.0, alpha: 1.0)
    }
    
    
    convenience init(hex: Int) {
        self.init(r: (hex >> 16), g: (hex >> 8), b: (hex & 0xff))
    }
}
