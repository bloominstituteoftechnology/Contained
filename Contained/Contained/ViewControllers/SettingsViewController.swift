//
//  SettingsViewController.swift
//  Contained
//
//  Created by Kobe McKee on 5/6/19.
//  Copyright © 2019 Kobe McKee. All rights reserved.
//

import UIKit
import SpriteKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var settingsView: SKView!
    var skscene: CustomScene? = nil
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        skscene = CustomScene(size: view.bounds.size)
        settingsView.backgroundColor = .white
        settingsView.presentScene(skscene)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func toggleRoll(_ sender: UISwitch) {
        Settings.shared.shouldRoll = !Settings.shared.shouldRoll
        settingsView.reloadInputViews()
    }
    
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        Settings.shared.shouldZoom = !Settings.shared.shouldZoom
        settingsView.reloadInputViews()
    }
    
    
}
