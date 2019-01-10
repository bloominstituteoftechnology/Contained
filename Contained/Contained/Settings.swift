//
//  Settings.swift
//  Contained
//
//  Created by Stuart on 1/9/19.
//  Copyright © 2019 Stuart. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}
