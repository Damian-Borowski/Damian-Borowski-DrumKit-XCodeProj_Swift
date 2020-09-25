//
//  ViewController.swift
//  DrumKIT Masters
//
//  Created by Damian on 09/05/2019.
//  Copyright © 2019 DBCreative. All rights reserved.
//

import UIKit
import AVFoundation
// SNARE ------------- //
class ViewController: UIViewController {

    var snareEffect: AVAudioPlayer = AVAudioPlayer()
    var lBassEffect: AVAudioPlayer = AVAudioPlayer()
    var rBassEffect: AVAudioPlayer = AVAudioPlayer()
    var hHatOpenEffect: AVAudioPlayer = AVAudioPlayer()
    var chinaEffect: AVAudioPlayer = AVAudioPlayer()
    var rideEffect: AVAudioPlayer = AVAudioPlayer()
    var splashEffect: AVAudioPlayer = AVAudioPlayer()
    var lCrashEffect: AVAudioPlayer = AVAudioPlayer()
    var rCrashEffect: AVAudioPlayer = AVAudioPlayer()
    var tOneEffect: AVAudioPlayer = AVAudioPlayer()
    var tTwoEffect: AVAudioPlayer = AVAudioPlayer()
    var tThreeEffect: AVAudioPlayer = AVAudioPlayer()
    var tFourEffect: AVAudioPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
   
        let musicFile = Bundle.main.path(forResource: "snare", ofType: ".wav")
        let musicFile2 = Bundle.main.path(forResource: "leftbass", ofType: ".wav")
        let musicFile3 = Bundle.main.path(forResource: "rightbass", ofType: ".wav")
        let musicFile4 = Bundle.main.path(forResource: "hihatopen", ofType: ".wav")
        let musicFile5 = Bundle.main.path(forResource: "china", ofType: ".wav")
        let musicFile6 = Bundle.main.path(forResource: "ride", ofType: ".wav")
        let musicFile7 = Bundle.main.path(forResource: "splash", ofType: ".wav")
        let musicFile8 = Bundle.main.path(forResource: "leftcrash", ofType: ".wav")
        let musicFile9 = Bundle.main.path(forResource: "rightcrash", ofType: ".wav")
        let musicFile10 = Bundle.main.path(forResource: "tom1", ofType: ".wav")
        let musicFile11 = Bundle.main.path(forResource: "tom2", ofType: ".wav")
        let musicFile12 = Bundle.main.path(forResource: "tom3", ofType: ".wav")
        let musicFile13 = Bundle.main.path(forResource: "tom4", ofType: ".wav")
        
        do{
            try snareEffect = AVAudioPlayer(contentsOf: URL (fileURLWithPath: musicFile!))
            try lBassEffect = AVAudioPlayer(contentsOf: URL (fileURLWithPath: musicFile2!))
            try rBassEffect = AVAudioPlayer(contentsOf: URL (fileURLWithPath: musicFile3!))
            try hHatOpenEffect = AVAudioPlayer(contentsOf: URL (fileURLWithPath: musicFile4!))
            try chinaEffect = AVAudioPlayer(contentsOf: URL (fileURLWithPath: musicFile5!))
            try rideEffect = AVAudioPlayer(contentsOf: URL (fileURLWithPath: musicFile6!))
            try splashEffect = AVAudioPlayer(contentsOf: URL (fileURLWithPath: musicFile7!))
            try lCrashEffect = AVAudioPlayer(contentsOf: URL (fileURLWithPath: musicFile8!))
            try rCrashEffect = AVAudioPlayer(contentsOf: URL (fileURLWithPath: musicFile9!))
            try tOneEffect = AVAudioPlayer(contentsOf: URL (fileURLWithPath: musicFile10!))
            try tTwoEffect = AVAudioPlayer(contentsOf: URL (fileURLWithPath: musicFile11!))
            try tThreeEffect = AVAudioPlayer(contentsOf: URL (fileURLWithPath: musicFile12!))
            try tFourEffect = AVAudioPlayer(contentsOf: URL (fileURLWithPath: musicFile13!))

        }
        
        catch {
            print("error")
        }
    }
    
    @IBAction func snarePlay(_ sender: Any) {
        snareEffect.play()
        snareEffect.currentTime=0
        snareEffect.volume=2
}
    @IBAction func leftBassPlay(_ sender: UIButton) {
        lBassEffect.play()
        lBassEffect.currentTime=0
        lBassEffect.volume=4
}
    @IBAction func rightBassPlay(_ sender: UIButton) {
        rBassEffect.play()
        rBassEffect.currentTime=0
        rBassEffect.volume=4
    }
    @IBAction func hihatOpenPlay(_ sender: UIButton) {
        hHatOpenEffect.play()
        hHatOpenEffect.currentTime=0
    }
    @IBAction func chinaPlay(_ sender: UIButton) {
        chinaEffect.play()
        chinaEffect.currentTime=0
        chinaEffect.volume=2
    }
    @IBAction func ridePlay(_ sender: UIButton) {
        rideEffect.play()
        rideEffect.currentTime=0
        rideEffect.volume=3
    }
    @IBAction func splashPlay(_ sender: UIButton) {
        splashEffect.play()
        splashEffect.currentTime=0
    }
    @IBAction func leftCrashPlay(_ sender: UIButton) {
        lCrashEffect.play()
        lCrashEffect.currentTime=0
        //lCrashEffect.volume=0.3
    }
    @IBAction func rightCrashPlay(_ sender: UIButton) {
        rCrashEffect.play()
        rCrashEffect.currentTime=0
        //rCrashEffect.volume=0.3
    }
    @IBAction func tomOnePlay(_ sender: UIButton) {
        tOneEffect.play()
        tOneEffect.currentTime=0
        tOneEffect.volume=3
    }
    @IBAction func tomTwoPlay(_ sender: UIButton) {
        tTwoEffect.play()
        tTwoEffect.currentTime=0
        tTwoEffect.volume=3
    }
    @IBAction func tomThreePlay(_ sender: UIButton) {
        tThreeEffect.play()
        tThreeEffect.currentTime=0
        tThreeEffect.volume=3
    }
    @IBAction func tomFourPlay(_ sender: UIButton) {
        tFourEffect.play()
        tFourEffect.currentTime=0
        tFourEffect.volume=3
    }
}
