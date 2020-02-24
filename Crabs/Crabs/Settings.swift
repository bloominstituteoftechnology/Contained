//
//  Settings.swift
//  Crabs
//
//  Created by Mark Gerrior on 2/24/20.
//  Copyright © 2020 Mark Gerrior. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}
