//
//  ToDoItem.swift
//  Project 04 - Todo
//
//  Created by LinkE on 2018/11/14.
//  Copyright © 2018年 dev. All rights reserved.
//

import Foundation


class ToDoItem: NSObject {
    var id: String
    var image: String
    var title: String
    var date: Date
    
    
    init(id: String, image: String, title: String, date: Date) {
        self.id = id
        self.image = image
        self.title = title
        self.date = date
    }
}
