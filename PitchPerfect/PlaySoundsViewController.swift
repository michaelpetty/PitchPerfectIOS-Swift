//
//  PlaySoundsViewController.swift
//  PitchPerfect
//
//  Created by james petty on 12/15/15.
//  Copyright © 2015 Michael Petty. All rights reserved.
//

import UIKit
import AVFoundation

class PlaySoundsViewController: UIViewController {
    
    var audioPlayer:AVAudioPlayer!
    func playAlteredSound(audioSpeed:Float) throws {
        audioPlayer.stop()
        audioPlayer.rate = audioSpeed
        audioPlayer.currentTime = 0.0
        audioPlayer.prepareToPlay()
        audioPlayer.play()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let wookieSoundURL = NSBundle.mainBundle().URLForResource("r_wookie", withExtension: "wav")!
        try! audioPlayer = AVAudioPlayer(contentsOfURL: wookieSoundURL, fileTypeHint: "wav")
        audioPlayer.enableRate = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func slowPlay(sender: UIButton) {
        try! playAlteredSound(0.5)
        
    }
    
    @IBAction func fastPlayer(sender: UIButton) {
        try! playAlteredSound(2.0)
    }
    
    @IBAction func stopPlayer(sender: UIButton) {
        if audioPlayer != nil {
            audioPlayer.stop()
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
