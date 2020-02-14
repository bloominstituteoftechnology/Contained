//
//  SettingsViewController.swift
//  Contained
//
//  Created by David Williams on 2/11/20.
//  Copyright © 2020 david williams. All rights reserved.
//

import UIKit
import SpriteKit

var crabImage = "waitingcrab000"
var appSliderThumbImage = ""

class SettingsViewController: UIViewController {
    @IBOutlet weak var slowFastRollLabel: UILabel!
    @IBOutlet weak var fastRollSwitchLabel: UISwitch!
    @IBOutlet weak var closeZoomLabel: UILabel!
    @IBOutlet weak var closeZoomSwitchLabel: UISwitch!
    @IBOutlet weak var imageBox: UIImageView!
    @IBOutlet weak var appSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        slowFastRollLabel.isHidden = true
        slowFastRollLabel.text = "Fast"
        fastRollSwitchLabel.isHidden = true
        closeZoomLabel.isHidden = true
        closeZoomLabel.text = "2X"
        closeZoomSwitchLabel.isHidden = true
        appSlider.isHidden = true
        appSlider.tintColor = .darkText
        appSlider.setThumbImage(UIImage(named: "sliderThumb2"), for: .normal)
    }
    
    
    @IBAction func toggleRoll(_ sender: UISwitch) {
        Settings.shared.shouldRoll = sender.isOn
        if Settings.shared.shouldRoll && slowFastRollLabel.isHidden {
            slowFastRollLabel.isHidden = false
            slowFastRollLabel.text = "Fast"
            fastRollSwitchLabel.isHidden = false
        } else {
            fastRollSwitchLabel.isOn = false
            slowFastRollLabel.isHidden = true
            fastRollSwitchLabel.isHidden = true
        }
    }
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        Settings.shared.shouldZoom = sender.isOn
        if Settings.shared.shouldZoom && closeZoomSwitchLabel.isHidden {
            closeZoomLabel.isHidden = false
            closeZoomLabel.text = "2X"
            closeZoomSwitchLabel.isHidden = false
        } else {
            closeZoomSwitchLabel.isOn = false
            closeZoomLabel.isHidden = true
            closeZoomSwitchLabel.isHidden = true
        }
    }
    
    @IBAction func toggleCrab(_ sender: UISwitch) {
        Settings.shared.shouldChangeCrab = sender.isOn
        if Settings.shared.shouldFade {
            checkForFadedCrab()
        } else {
            imageBox.image = UIImage(named: "")
            appSlider.isHidden = true
        }
    }
    
    func updateViews() {
        if Settings.shared.shouldChangeCrab {
            imageBox.image = UIImage(named: "happycrab000")
        } else {
            imageBox.image = UIImage(named: "waitingcrab000")
        }
        appSlider.setThumbImage(UIImage(named: "\(appSliderThumbImage)"), for: .normal)
    }
    
    func checkForFadedCrab() {
        if Settings.shared.shouldFade {
            updateViews()
        }
    }
    
    @IBAction func toggleFade(_ sender: UISwitch) {
        Settings.shared.shouldFade = sender.isOn
        if Settings.shared.shouldFade {
            Settings.shared.gameStart = true
            appSlider.isHidden = false
            setImage()
        imageBox.image = UIImage(named: crabImage)
        } else {
            imageBox.image = UIImage(named: "")
            appSlider.isHidden = true
        }
    }
    
    func setImage() {
        if Settings.shared.shouldFade && Settings.shared.shouldChangeCrab {
            crabImage = "happycrab000"
        } else if Settings.shared.shouldFade && !Settings.shared.shouldChangeCrab {
            crabImage = "waitingcrab000"
        }
    }
    
    @IBAction func rollSpeedPressed(_ sender: UISwitch) {
        if Settings.shared.rollFast {
        slowFastRollLabel.text = "Fast"
        } else {
            slowFastRollLabel.text = "Slow"
        }
        Settings.shared.rollFast = sender.isOn
    }
    
    @IBAction func toggleCloseZoomPressed(_ sender: UISwitch) {
        if Settings.shared.zoomClose {
            closeZoomLabel.text = "2X"
        } else {
            closeZoomLabel.text = "1X"
        }
        Settings.shared.zoomClose = sender.isOn
    }
    
    @IBAction func changeColorPressed(_ sender: UIButton) {
        Settings.shared.changeBackground = sender.tag
        switch sender.tag {
        case 0:
            appSliderThumbImage = "sliderThumbDarkGrey"
        case 1:
            appSliderThumbImage = "sliderThumbGreen"
        case 2:
            appSliderThumbImage = "sliderThumbRed"
        case 3:
            appSliderThumbImage = "sliderThumbOrange"
        case 4:
            appSliderThumbImage = "sliderThumbBlue"
        default:
            break
        }
        checkForFadedCrab()
        sender.alpha = 0.75
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5, execute: { sender.alpha = 1.0 })
    }
    
    @IBAction func sliderAction(_ sender: Any) {
        imageBox.alpha = CGFloat(appSlider.value)
        Settings.shared.alpha = CGFloat(appSlider.value)    }
}


