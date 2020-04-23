//
//  Settings.swift
//  Contained
//
//  Created by Rob Vance on 4/21/20.
//  Copyright © 2020 Robs Creations. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}
