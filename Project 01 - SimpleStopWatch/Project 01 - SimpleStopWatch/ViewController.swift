//
//  ViewController.swift
//  Project 01 - SimpleStopWatch
//
//  Created by snqu-qin on 17/3/30.
//  Copyright © 2017年 snqu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var playBtn: UIButton!
    @IBOutlet weak var pauseBtn: UIButton!
    @IBOutlet weak var timeLabel: UILabel!
    
    var counter = 0.0
    var timer = Timer()
    var isPlaying = false
    
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timeLabel.text = String(counter)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func resetButtonDidTouch(_ sender: AnyObject){
        timer.invalidate()
        isPlaying = false
        counter = 0
        timeLabel.text = String(counter)
        playBtn.isEnabled = true
        pauseBtn.isEnabled = true
    }
    
    @IBAction func playButtonDidTouch(_ sender: AnyObject){
        if isPlaying {
            return
        }
        
        playBtn.isEnabled = false
        pauseBtn.isEnabled = true
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
        isPlaying = true
    }
    
    @IBAction func pauseButtonDidTouch(_ sender: AnyObject){
        playBtn.isEnabled = true
        pauseBtn.isEnabled = false
        timer.invalidate()
        isPlaying = false
    }
    
    func updateTimer() {
        counter = counter + 0.1
        timeLabel.text = String(format: "%.1f", counter)
    }

}

