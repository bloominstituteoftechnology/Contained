//
//  SettingsViewController.swift
//  Contained
//
//  Created by David Wright on 12/4/19.
//  Copyright © 2019 David Wright. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // MARK: - IBActions
    @IBAction func toggleRoll(_ sender: UISwitch) {
        Settings.shared.shouldRoll = sender.isOn
    }
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        Settings.shared.shouldZoom = sender.isOn
    }
    
    @IBAction func toggleHappyCrab(_ sender: UISwitch) {
        Settings.shared.isHappy = sender.isOn
    }
    
    @IBAction func speedSliderChanged(_ sender: UISlider) {
        let sliderValue = Double(sender.value)
        Settings.shared.actionDuration = 0.2 + (2 * (1 - sliderValue))
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
