//
//  Settings.swift
//  Contained
//
//  Created by Joshua Rutkowski on 12/4/19.
//  Copyright © 2019 Joshua Rutkowski. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}
