//
//  ViewController.swift
//  PitchPerfect
//
//  Created by Jorhabib Eljaik on 20/06/16.
//  Copyright © 2016 Jorhabib Eljaik. All rights reserved.
//

import UIKit
import AVFoundation

class RecordSoundsViewController: UIViewController {

    @IBOutlet weak var recordingLabel: UILabel!
    @IBOutlet weak var recordButton: UIButton!
    @IBOutlet weak var stopRecordingButton: UIButton!
//    var audioRecorder:AVAudioRecorder!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stopRecordingButton.enabled = false
        recordButton.enabled = true
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func recordAudio(sender: AnyObject) {
        print("Record button pressed")
        recordingLabel.text = "Recording in Progress"
        stopRecordingButton.enabled = true
        recordButton.enabled = false

        // Instantiation of AVAudioSession, configuration and recording.
//        let dirPath = NSSearchPathForDirectoriesInDomains(.DocumentDirectory,.UserDomainMask, true)[0] as String
//        let recordingName = "recordedVoice.wav"
//        let pathArray = [dirPath, recordingName]
//        let filePath = NSURL.fileURLWithPathComponents(pathArray)
//        print(filePath)
//        
//        let session = AVAudioSession.sharedInstance()
//        try! session.setCategory(AVAudioSessionCategoryPlayAndRecord)
//        
//        try! audioRecorder = AVAudioRecorder(URL: filePath!, settings: [:])
//        audioRecorder.meteringEnabled = true
//        audioRecorder.prepareToRecord()
//        audioRecorder.record()
    }
    
    @IBAction func stopRecording(sender: AnyObject) {
        print("stop recording button pressed")
        recordButton.enabled = true
        stopRecordingButton.enabled = false
        recordingLabel.text = "Tap to record"
        
//        audioRecorder.stop()
//        let audioSession = AVAudioSession.sharedInstance()
//        try! audioSession.setActive(false)
    }
    
    override func viewWillAppear(animated: Bool) {
        print("viewWillAppear called")
    }
    
}

