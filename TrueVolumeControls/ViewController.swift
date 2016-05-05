//
//  ViewController.swift
//  TrueVolumeControls
//
//  Created by wizage on 5/4/16.
//  Copyright © 2016 wizage. All rights reserved.
//

import UIKit
import MediaPlayer

class ViewController: UIViewController {
    
    @IBOutlet weak var label : UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        let vc = VolumeControl.sharedInstance
        
        /*
         This dispatch after is because the application is adding the volume control and not allowing enought time
         for the system to get the actual volume so it returns 0.0 which is incorrect.
        */
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, Int64(0.01*Double(NSEC_PER_SEC))), dispatch_get_main_queue())
        {
            self.label.text = String(format: "Current Volume: %.3f", vc.getCurrentVolume())
        }
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func turnUp()
    {
        let vc = VolumeControl.sharedInstance
        vc.turnUp()
        label.text = String(format: "Current Volume: %.3f", vc.getCurrentVolume())
    }
    
    @IBAction func turnDown()
    {
        let vc = VolumeControl.sharedInstance
        vc.turnDown()
        label.text = String(format: "Current Volume: %.3f", vc.getCurrentVolume())
    }


}

