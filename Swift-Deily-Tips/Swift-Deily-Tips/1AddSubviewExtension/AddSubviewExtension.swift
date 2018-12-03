//
//  AddSubviewExtension.swift
//  Swift-Deily-Tips
//
//  Created by LinkE on 2018/12/3.
//  Copyright © 2018年 dev. All rights reserved.
//  https://github.com/MobileTipsters/Swift-Daily-Tips/blob/master/codes/AddSubviewExtension.swift

import Foundation
import UIKit

extension UIView {
    func addSubViews(_ subviews: UIView...) {
        subviews.forEach(addSubview)
    }
}



fileprivate class TestAddSubViewExtension{
    func test()  {
        let view = UIView()
        let subView1 = UIView()
        let subView2 = UIView()
        
        view.addSubViews(subView1, subView2)
    }
}
