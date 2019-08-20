//
//  settingsViewController.swift
//  Contained
//
//  Created by Alex Rhodes on 8/14/19.
//  Copyright © 2019 Alex Rhodes. All rights reserved.
//

import UIKit

class settingsViewController: UIViewController {

    var settings: Settings?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    @IBAction func rollSwitch(_ sender: UISwitch) {
        settings?.shouldRoll.toggle()
    }
    
    @IBAction func zoomSwitch(_ sender: UISwitch) {
        settings?.shouldZoom.toggle()
    }
    
}
