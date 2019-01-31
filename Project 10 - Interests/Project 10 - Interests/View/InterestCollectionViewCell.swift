//
//  InterestCollectionViewCell.swift
//  Project 10 - Interests
//
//  Created by LinkE on 2019/1/31.
//  Copyright © 2019年 dev. All rights reserved.
//

import UIKit

class InterestCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var featuredImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    var interest: Interest! {
        didSet {
            updateUI()
        }
    }
    
    
    fileprivate func updateUI() {
        titleLabel.text = interest.title
        featuredImageView.image = interest.featuredImage
    }
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.layer.cornerRadius = 8.0
        self.clipsToBounds = true
    }
    
}
