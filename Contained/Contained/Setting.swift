//
//  Setting.swift
//  Contained
//
//  Created by Gi Pyo Kim on 9/16/19.
//  Copyright © 2019 GIPGIP Studio. All rights reserved.
//

import Foundation
import SpriteKit

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
    var useHappyCrab = true
    
    var recentTouchPoint: CGPoint? = nil
}
