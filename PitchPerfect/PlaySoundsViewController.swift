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
    func playAlteredSound() throws {
        audioPlayer.prepareToPlay()
        audioPlayer.play()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        let wookieSoundURL = NSBundle.mainBundle().URLForResource("r_wookie", withExtension: "wav")!
        try! audioPlayer = AVAudioPlayer(contentsOfURL: wookieSoundURL, fileTypeHint: "wav")
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func slowPlay(sender: UIButton) {
        try! playAlteredSound()
        
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
