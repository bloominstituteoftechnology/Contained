//
//  Settings.swift
//  Contained
//
//  Created by Rob Vance on 2/12/20.
//  Copyright © 2020 Rob Vance. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}
