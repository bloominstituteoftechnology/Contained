//
//  settings.swift
//  CrabGame
//
//  Created by David Williams on 12/3/19.
//  Copyright © 2019 david williams. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
    var changeCrab = false
}
