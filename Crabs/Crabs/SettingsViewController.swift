//
//  SettingsViewController.swift
//  Crabs
//
//  Created by Eugene White on 6/3/20.
//  Copyright © 2020 Eugene White. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
 
    @IBOutlet weak var toggleRoll: UISwitch!
        
    
   
    @IBAction func toggleRoll(_ sender: UISwitch) {
        Settings.shared.shouldRoll = sender.isOn
    }
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        Settings.shared.shouldZoom = sender.isOn
        
    }
    @IBOutlet weak var toggleZoom: UISwitch!
    func toggleZoomOn(_: Bool, animated: Bool) {
        
    
    
    
        func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
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


