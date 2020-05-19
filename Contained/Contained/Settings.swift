//
//  Settings.swift
//  Contained
//
//  Created by Bryan Cress on 5/18/20.
//  Copyright © 2020 Bryan Cress. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}
