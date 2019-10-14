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
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
    
    var lastTouchPoint: CGPoint?
}
