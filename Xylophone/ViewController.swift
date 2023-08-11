//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//


import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!
    var selectedbutton: String?

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func playSound() {
        let url = Bundle.main.url(forResource: selectedbutton , withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
    
    
    
    @IBAction func keyPressed(_ sender: UIButton) {
        
        selectedbutton = sender.currentTitle
        
        playSound()
        
        sender.alpha = 0.5

        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            sender.alpha = 1.0
        }
    }
    
    
}

