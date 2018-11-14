//
//  FBMeBaseCell.swift
//  Project 03 - FacebookMe
//
//  Created by LinkE on 2018/11/13.
//  Copyright © 2018年 dev. All rights reserved.
//

import UIKit

class FBMeBaseCell: UITableViewCell {
    
    static let identifier = "FBMeBaseCell"
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .default, reuseIdentifier: reuseIdentifier)
        
        backgroundColor = Specs.color.white
        textLabel?.textColor = Specs.color.black
        textLabel?.font = Specs.font.large
        
        detailTextLabel?.font = Specs.font.small
        detailTextLabel?.textColor = Specs.color.gray
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
