//
//  Settings.swift
//  Crabs
//
//  Created by Rohan Taylor on 12/16/19.
//  Copyright © 2019 Rohan Taylor. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}
