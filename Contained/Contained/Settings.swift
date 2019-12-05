//
//  Settings.swift
//  Contained
//
//  Created by David Wright on 12/4/19.
//  Copyright © 2019 David Wright. All rights reserved.
//

import UIKit

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
    var isHappy = true
    var actionDuration = 1.2
    var mostRecentTouchPoint: CGPoint?
}
