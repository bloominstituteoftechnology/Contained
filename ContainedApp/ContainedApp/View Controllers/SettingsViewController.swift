//
//  SettingsViewController.swift
//  ContainedApp
//
//  Created by Vici Shaweddy on 8/6/19.
//  Copyright © 2019 Vici Shaweddy. All rights reserved.
//

import UIKit
import SpriteKit

class SettingsViewController: UIViewController {
    @IBOutlet weak var switchZoom: UISwitch!
    @IBOutlet weak var switchRoll: UISwitch!
    @IBOutlet weak var switchFade: UISwitch!
    @IBOutlet weak var segment: UISegmentedControl!
    @IBOutlet weak var characterImage: UIImageView!
    
    let crab = SKSpriteNode()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        characterImage.image = UIImage(named: "happycrab000")
    }
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
    // option 1 - using if let
//        if switchZoom.isOn  {
//            Settings.shared.shouldZoom = true
//        } else {
//            Settings.shared.shouldZoom = false
//        }
        
    // option 2 - using ternary operator
        switchZoom.isOn ? (Settings.shared.shouldZoom = true) : (Settings.shared.shouldZoom = false)
        
    // option 3 - simple toggle but it's a confusing logic
//        Settings.shared.shouldZoom.toggle()

        

    }
    
    @IBAction func toggleRoll(_ sender: UISwitch) {
        Settings.shared.shouldRoll.toggle()

//        if switchRoll.isOn {
//            Settings.shared.shouldRoll = true
//        } else {
//            Settings.shared.shouldRoll = false
//        }
    }

    @IBAction func toggleFade(_ sender: UISwitch) {
        Settings.shared.shouldFade.toggle()
    }
    
    @IBAction func indexChanged(_ sender: UISegmentedControl) {
        
        switch segment.selectedSegmentIndex {
        case 0:
            Settings.shared.character = .happyCrab
            characterImage.image = UIImage(named: "happycrab000")
        case 1:
            Settings.shared.character = .waitingCrab
            characterImage.image = UIImage(named: "waitingcrab000")
        default:
            Settings.shared.character = .happyCrab
            characterImage.image = UIImage(named: "happycrab000")
        }
    }
}
