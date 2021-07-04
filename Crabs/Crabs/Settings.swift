//
//  Settings.swift
//  Crabs
//
//  Created by William Chen on 8/19/19.
//  Copyright © 2019 William Chen. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}

