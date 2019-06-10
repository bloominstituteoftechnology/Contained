//
//  SettingsViewController.swift
//  Contained
//
//  Created by Marlon Raskin on 6/10/19.
//  Copyright © 2019 Marlon Raskin. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

	@IBOutlet var rollSwitch: UISwitch!
	@IBOutlet var zoomSwitch: UISwitch!
	
	
	override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
	@IBAction func toggleRoll(_ sender: UISwitch) {
		if !rollSwitch.isOn {
			rollSwitch.isOn = true
		} else if rollSwitch.isOn {
			rollSwitch.isOn = false
		}
	}
	@IBAction func toggleZoom(_ sender: UISwitch) {
		if !zoomSwitch.isOn {
			zoomSwitch.isOn = true
		} else if zoomSwitch.isOn {
			zoomSwitch.isOn = false
		}
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
