//
//  Settings.swift
//  SpriteKit
//
//  Created by Chris Dobek on 3/23/20.
//  Copyright © 2020 Chris Dobek. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}

