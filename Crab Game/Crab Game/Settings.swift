//
//  Settings.swift
//  Crab Game
//
//  Created by Ian Becker on 5/18/20.
//  Copyright © 2020 Ian Becker. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}
