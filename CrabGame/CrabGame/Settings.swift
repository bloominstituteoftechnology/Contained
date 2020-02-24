//
//  Settings.swift
//  CrabGame
//
//  Created by Shawn Gee on 2/24/20.
//  Copyright © 2020 Swift Student. All rights reserved.
//

import UIKit

class Settings {
    static let shared = Settings()
    private init() {
        
        if let savedSettings = UserDefaults.standard.dictionary(forKey: "Settings") {
            shouldRoll = savedSettings["shouldRoll"] as! Bool
            shouldZoom = savedSettings["shouldZoom"] as! Bool
            crabIsHappy = savedSettings["crabIsHappy"] as! Bool
            motionSicknessEnabled = savedSettings["motionSicknessEnabled"] as! Bool
        }
    }
    
    var shouldRoll = true
    var shouldZoom = true
    var crabIsHappy = true
    var motionSicknessEnabled = false
    
    var lastCrabPosition: CGPoint?

    func save() {
        let settings = [
            "shouldRoll": shouldRoll,
            "shouldZoom": shouldZoom,
            "crabIsHappy": crabIsHappy,
            "motionSicknessEnabled": motionSicknessEnabled
        ]
        
        UserDefaults.standard.set(settings, forKey: "Settings")
    }
}
