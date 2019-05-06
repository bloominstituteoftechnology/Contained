//
//  Settings.swift
//  Contained
//
//  Created by Jordan Davis on 5/6/19.
//  Copyright © 2019 Jordan Davis. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}
