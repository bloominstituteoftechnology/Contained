//
//  SettingsViewController.swift
//  
//
//  Created by Nathan Hedgeman on 5/8/19.
//

import UIKit

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    //Toggles for the settings menu*******
    
    @IBAction func toggleRoll(_ sender: UISwitch) {
        let rolltoggle = Settings()
        if sender.isOn {
            rolltoggle.shouldRoll = true
            //print("Is On")
        } else { rolltoggle.shouldRoll = false
            //print("Is Off")
        }
        
        
    }
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        let zoomtoggle = Settings()
        if sender.isOn {
            zoomtoggle.shouldZoom = true
            //print("Is On")
        } else { zoomtoggle.shouldZoom = false
            //print("Is Off")
        }
    }
    //End of Toggles for the settings menu*******

}
