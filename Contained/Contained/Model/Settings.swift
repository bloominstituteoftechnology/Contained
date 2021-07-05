//
//  Settings.swift
//  Contained
//
//  Created by Harmony Radley on 2/24/20.
//  Copyright © 2020 Harmony Radley. All rights reserved.
//

import Foundation
import SpriteKit 

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}

