//
//  Settings.swift
//  SpriteKitGame
//
//  Created by Mark Poggi on 3/23/20.
//  Copyright © 2020 Mark Poggi. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}

