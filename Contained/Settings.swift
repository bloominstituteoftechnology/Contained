//
//  Settings.swift
//  Contained
//
//  Created by Vincent Hoang on 4/20/20.
//  Copyright © 2020 Vincent Hoang. All rights reserved.
//

import Foundation
import SpriteKit

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = true
    var shouldZoom = true
    var toggleCrab = true
    
    var lastTouchLocation: CGPoint?
}
