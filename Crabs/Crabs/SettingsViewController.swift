//
//  SettingsViewController.swift
//  Crabs
//
//  Created by Keri Levesque on 1/27/20.
//  Copyright © 2020 Keri Levesque. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var rollSwitch: UISwitch!
    
    @IBOutlet weak var zoomSwitch: UISwitch!
    
    override func viewDidLoad() {
      super.viewDidLoad()

      // Do any additional setup after loading the view.
  }

    @IBAction func toggleRoll(_ sender: UISwitch) {
        rollSwitch.setOn(sender.isOn, animated: true
        )
    }
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
         zoomSwitch.setOn(sender.isOn, animated: true)
        
    }
    

}
