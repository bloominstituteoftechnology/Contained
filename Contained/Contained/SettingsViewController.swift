//
//  SettingsViewController.swift
//  Contained
//
//  Created by Victor  on 4/29/19.
//  Copyright © 2019 com.Victor. All rights reserved.
//

import Foundation
import UIKit

class SettingsViewController: UIViewController {
    
    var settings: Settings?
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        settings?.shouldZoom = sender.isOn
    }
    
    @IBAction func toggleRoll(_ sender: UISwitch) {
        settings?.shouldRoll = sender.isOn
    }
    
    
    
}
