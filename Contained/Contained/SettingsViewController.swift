//
//  SettingsViewController.swift
//  Contained
//
//  Created by David Wright on 12/4/19.
//  Copyright © 2019 David Wright. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    var rollIsOn: Bool = false
    var zoomIsOn: Bool = false

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // MARK: - IBActions
    @IBAction func toggleRoll(_ sender: UISwitch) {
        rollIsOn = sender.isOn
    }
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        zoomIsOn = sender.isOn
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
