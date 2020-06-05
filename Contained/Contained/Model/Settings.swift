//
//  Settings.swift
//  Contained
//
//  Created by John McCants on 6/3/20.
//  Copyright © 2020 John McCants. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
    var firstPress = false
}
