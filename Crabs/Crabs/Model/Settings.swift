//
//  Settings.swift
//  Crabs
//
//  Created by Joseph Rogers on 8/7/19.
//  Copyright © 2019 Joe Rogers. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}
