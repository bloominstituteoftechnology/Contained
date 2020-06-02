//
//  Settings.swift
//  Crabs
//
//  Created by Jon Bash on 2019-10-14.
//  Copyright © 2019 Jon Bash. All rights reserved.
//

import UIKit

class Settings {
    static let shared = Settings()
    
    var shouldRoll = false
    var shouldZoom = false
    var shouldSquish = false
    var isGhost = false
    var happyCrab = true
    
    var lastTouchPoint: CGPoint?
    
    private init() {}
}
