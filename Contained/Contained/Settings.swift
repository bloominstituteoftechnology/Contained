//
//  Settings.swift
//  Contained
//
//  Created by Rick Wolter on 10/14/19.
//  Copyright © 2019 Richar Wolter. All rights reserved.
//

import Foundation
import UIKit

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
    
    
    
    @IBAction func toggleRoll(_ sender: UISwitch) {
        shouldRoll = !(shouldRoll)

    }
    
    
    @IBAction func toggleZoom(_ sender: UISwitch) {
        
        shouldZoom = !(shouldZoom)
    }
    
    
    
    
    
}
 
