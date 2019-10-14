//
//  Settings.swift
//  Contained
//
//  Created by morse on 10/14/19.
//  Copyright © 2019 morse. All rights reserved.
//

import Foundation
import SpriteKit

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
    var mostRecentTouchPoint = CGPoint(x: -5, y: 0)
}
