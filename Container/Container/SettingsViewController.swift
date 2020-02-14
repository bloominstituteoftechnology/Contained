//
//  SettingsViewController.swift
//  Container
//
//  Created by Bree Jeune on 2/13/20.
//  Copyright © 2020 Young. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBAction func toggleRoll(_ sender: Any) {
           guard let button = sender as? UISwitch else { return }
           
           button.isSelected.toggle()
       }
    
    @IBAction func toggleZoom(_ sender: Any) {
           guard let button = sender as? UISwitch else { return }
           
           button.isSelected.toggle()
       }

}
