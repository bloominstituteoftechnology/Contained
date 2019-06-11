//
//  SettingsViewController.swift
//  Crab Game
//
//  Created by Kat Milton on 6/10/19.
//  Copyright © 2019 Kat Milton. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    // MARK: - Properties and Outlets
    @IBOutlet var touchLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        let position = Settings.shared.position
        let locationX = Int(position.x)
        let locationY = Int(position.y)
        let point = "{ \(locationX), \(locationY) }"
        touchLabel.text = point
        touchLabel.reloadInputViews()
    }
    
    // MARK: - IBActions
    
    @IBAction func toggleRoll(_ sender: UISwitch) {
        Settings.shared.shouldRoll.toggle()
    }
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        Settings.shared.shouldZoom.toggle()
    }
    
    @IBAction func toggleMood(_ sender: UISwitch) {
        Settings.shared.isHappy.toggle()
    }
    
    @IBAction func toggleFade(_ sender: UISwitch) {
        Settings.shared.shouldFade.toggle()
    }
    
    

}
