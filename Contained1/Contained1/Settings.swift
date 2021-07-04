//
//  Settings.swift
//  Contained1
//
//  Created by Michael Flowers on 4/30/19.
//  Copyright © 2019 Michael Flowers. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}
