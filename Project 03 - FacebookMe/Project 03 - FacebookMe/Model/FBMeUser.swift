//
//  FBMeUser.swift
//  Project 03 - FacebookMe
//
//  Created by LinkE on 2018/11/13.
//  Copyright © 2018年 dev. All rights reserved.
//

import Foundation

class FBMeUser {
    var name: String
    var avatarName: String
    var education: String
    
    init(name: String, avatarName: String = "boyMax", education: String) {
        self.name = name
        self.avatarName = avatarName
        self.education = education
    }
}
