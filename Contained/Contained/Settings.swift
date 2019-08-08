//
//  Settings.swift
//  Contained
//
//  Created by Casualty on 8/7/19.
//  Copyright © 2019 Thomas Dye. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}
