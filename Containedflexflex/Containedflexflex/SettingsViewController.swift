//
//  SettingsViewController.swift
//  Containedflexflex
//
//  Created by admin on 9/16/19.
//  Copyright © 2019 admin. All rights reserved.
//

import UIKit
import SpriteKit

class SettingsViewController: UIViewController {
    
    let crab = SKSpriteNode()
    
    @IBOutlet weak var crabLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func rollToggle(_ sender: UISwitch) {
        if sender.isOn {
            Settings.shared.shouldRoll = true
        } else {
            Settings.shared.shouldRoll = false
        }
    }
    @IBAction func zoomToggle(_ sender: UISwitch) {
        if sender.isOn {
            Settings.shared.shouldZoom = true
        } else {
            Settings.shared.shouldZoom = false
        }
    }
    @IBAction func crabSwitch(_ sender: UISwitch) {
        if sender.isOn {
            crabLabel.text = "Waiting Crab"
            crab.loadTextures(named: "WaitingCrab", forKey: SKSpriteNode.textureKey)
        } else {
            crabLabel.text = "Happy Crab"
            crab.loadTextures(named: "HappyCrab", forKey: SKSpriteNode.textureKey)
        }
    }
    
    
}
