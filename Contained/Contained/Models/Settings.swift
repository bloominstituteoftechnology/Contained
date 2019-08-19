//
//  Settings.swift
//  Contained
//
//  Created by Joshua Sharp on 8/19/19.
//  Copyright © 2019 Joshua Sharp. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}
