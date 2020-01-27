//
//  Settings.swift
//  CrabSpriteKitGame
//
//  Created by Nichole Davidson on 1/27/20.
//  Copyright © 2020 Nichole Davidson. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}
