//
//  Stopwatch.swift
//  Project 02 - Stopwatch
//
//  Created by LinkE on 2018/11/12.
//  Copyright © 2018年 dev. All rights reserved.
//

import Foundation

class Stopwatch: NSObject {
    var counter: Double
    var timer: Timer
    
    override init() {
        counter = 0.0
        timer = Timer()
    }
}
