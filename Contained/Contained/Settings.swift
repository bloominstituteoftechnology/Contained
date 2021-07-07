//
//  Settings.swift
//  Contained
//
//  Created by Thomas Cacciatore on 5/6/19.
//  Copyright © 2019 Thomas Cacciatore. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}
