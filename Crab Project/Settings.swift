//
//  Settings.swift
//  Crab Project
//
//  Created by Eugene White on 6/3/20.
//  Copyright © 2020 Eugene White. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}
