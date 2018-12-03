//
//  StaticFactoryMethodsForUILabel.swift
//  Swift-Deily-Tips
//
//  Created by LinkE on 2018/12/3.
//  Copyright © 2018年 dev. All rights reserved.
//

import Foundation
import UIKit

extension UILabel{
    static func initForTitle() -> UILabel {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.textColor = .darkGray
        label.numberOfLines = 1
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.75
        return label
    }
    
    static func initForDescription() -> UILabel {
        let label = UILabel()
        label.font = .systemFont(ofSize: 14)
        label.textColor = .black
        label.numberOfLines = 0
        return label
    }
    
}


fileprivate class ContentViewController: UIViewController {
    lazy var titleLabel = UILabel.initForTitle()
    lazy var textLabel = UILabel.initForDescription()
}
