//
//  Settings.swift
//  CrabGame
//
//  Created by Nick Nguyen on 1/27/20.
//  Copyright © 2020 Nick Nguyen. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}
