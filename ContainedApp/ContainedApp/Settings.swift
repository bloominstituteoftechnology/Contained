//
//  Settings.swift
//  ContainedApp
//
//  Created by Donella Barcelo on 8/19/19.
//  Copyright © 2019 Donella Barcelo. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}

