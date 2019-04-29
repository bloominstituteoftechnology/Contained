//
//  Settings.swift
//  Contained
//
//  Created by Jeffrey Carpenter on 4/29/19.
//  Copyright © 2019 Jeffrey Carpenter. All rights reserved.
//

import Foundation
import CoreGraphics

class Settings {
    
    static var shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
    var mood = Mood.happy
    var position = CGPoint(x: 0, y: 0)
    
}

// Define the moods
enum Mood {
    case happy
    case waiting
}
