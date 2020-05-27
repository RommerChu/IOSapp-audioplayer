//
//  ViewController.swift
//  AudioPlayer
//
//  Created by Rommer Chu on 2020-05-15.
//  Copyright © 2020 Rommer Chu. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    //initialized
    var player:AVAudioPlayer=AVAudioPlayer();
    
        override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //BUTTON1
    @IBAction func bell1(_ sender: UIButton) {
        bellSound(name: "doorbell1")
        
    }
    
    //BUTTON2
    @IBAction func bell2(_ sender: UIButton) {
        
        bellSound(name: "doorbell2")
    }
    
    //BUTTON3
    @IBAction func bell3(_ sender: UIButton) {
        bellSound(name: "doorbell3")
    }
    
    //STOP BUTTON
    //@IBAction func stop(_ sender: UIButton) {
       
        //player.stop()
    //}
    
    @IBAction func STOP(_ sender: UIButton) {
        player.stop()
    }
    
    
        
    //THIS IS THE FUNCTION FOR ALL THE BELLS TO WORK
    
    
    func bellSound(name:String){
    
        do{
            let audioPath = Bundle.main.path(forResource: name, ofType: "mp3")
            
            try player = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath!) as URL)
            
        }catch{
            print("Some Error")
        }
        
        player.play()
    }
    
}

