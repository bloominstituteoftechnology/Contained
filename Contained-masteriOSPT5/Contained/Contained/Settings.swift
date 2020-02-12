//
//  File.swift
//  Contained
//
//  Created by David Williams on 2/11/20.
//  Copyright © 2020 david williams. All rights reserved.
//

import Foundation
import SpriteKit

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
    var shouldChangeCrab = false
    var shouldFade = false
    var lastPosition: CGPoint = CGPoint(x: 0.0, y: 0.0)
    var rollFast = false
    var zoomClose = false
}
