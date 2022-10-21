//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation //Audio Video Foundation

class ViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    // Basic declaration
    let softTime = 5
    let mediumTime = 7
    let hardTime = 12
    
    //Dictionary
    let eggTimes = ["Soft": (3), "Medium": (4), "Hard": (7)]
    
    //Adding Progress Bar
    @IBOutlet weak var progressBar: UIProgressView!
    
    //Adding Timer
    var timer = Timer()
    
    var totalTime = 0
    var secondsPassed = 0
    
    //Adding Alarm Sound
    var player: AVAudioPlayer!
    
    @IBAction func hardnessPressed(_ sender: UIButton) {

        timer.invalidate()
        
        let hardness = sender.currentTitle!
        
        totalTime = eggTimes[hardness]!
        
        progressBar.progress = 0.0
        secondsPassed = 0
        titleLabel.text = hardness
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
            
    }
    
    @objc func updateTimer() {
        let percentageProgress = Float(secondsPassed)/Float(totalTime)
        
        if secondsPassed < totalTime {
            progressBar.progress = percentageProgress
            secondsPassed += 1
        }
        else {
            progressBar.progress = percentageProgress
            timer.invalidate()
            titleLabel.text = "DONE!"
            let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3")
            player = try! AVAudioPlayer(contentsOf: url!)
            player.play()
        }
    }
    
    
    
}
