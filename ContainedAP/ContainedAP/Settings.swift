//
//  Settings.swift
//  ContainedAP
//
//  Created by Jorge Alvarez on 12/16/19.
//  Copyright © 2019 Jorge Alvarez. All rights reserved.
//

import Foundation
import SpriteKit

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
    var happyCrab = false // stretch
    var turboCrab = false // stretch
    var ghostCrab = false // stretch
    var lastPosition: CGPoint = CGPoint(x: 0.0, y: 0.0)
}
