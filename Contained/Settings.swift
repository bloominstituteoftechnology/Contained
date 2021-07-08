//
//  Settings.swift
//  Contained
//
//  Created by scott harris on 1/27/20.
//  Copyright © 2020 scott harris. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
    
}
