//
//  Settings.swift
//  Contained
//
//  Created by Kenneth Jones on 4/22/20.
//  Copyright © 2020 Kenneth Jones. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}
