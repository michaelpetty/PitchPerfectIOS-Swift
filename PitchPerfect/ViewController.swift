//
//  ViewController.swift
//  PitchPerfect
//
//  Created by james petty on 12/8/15.
//  Copyright © 2015 Michael Petty. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var recordingLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func startRecording(sender: UIButton) {
        recordingLabel.hidden = false
        print("start recording")
    }
}

