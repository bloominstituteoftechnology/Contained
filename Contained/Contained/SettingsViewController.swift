//  SettingsViewController.swift
//  Contained
//
//  Created by Sameera Leola on 11/14/18.
//  Copyright © 2018 Sameera Leola. All rights reserved.
//  Modified by Sameera Leola on 11/21/2018 - Added crab selection
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet var crabImage: UIImageView!
    
   override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func toggleRoll(_ sender: UISwitch) {
        Model.shared.shouldRoll = sender.isOn ? true : false
    }
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        Model.shared.shouldZoom = sender.isOn ? true : false
    }
    
    @IBAction func pickCrab(_ sender: SLRCrabButton) {
        print("Not doing anything")
    }
    
    
//    @IBAction func pickCrab(_ sender: UISegmentedControl) {
//        if (sender.selectedSegmentIndex == 0) {
//            //Set the UIImageView = the happy crab
//            crabImage.image = UIImage(named: "happycrab000")!
//            //Set the selected crab (via the UISegmentedControl
//            Model.shared.selectCrab("HappyCrab")
//        }
//        else {
//            //Set the UIImageView = the waiting crab
//            crabImage.image = UIImage(named: "waitingcrab000")!
//            //Set the selected crab (via the UISegmentedControl
//            Model.shared.selectCrab("WaitingCrab")
//        }
//    }
    
}
