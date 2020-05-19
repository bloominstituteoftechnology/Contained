//
//  Settings.swift
//  Contained
//
//  Created by Richard Gibbs on 5/18/20.
//  Copyright © 2020 Rich Gibbs. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}


