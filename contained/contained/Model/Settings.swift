//
//  Settings.swift
//  contained
//
//  Created by Aaron Cleveland on 12/16/19.
//  Copyright © 2019 Aaron Cleveland. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}
