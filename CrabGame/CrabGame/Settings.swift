//
//  Settings.swift
//  CrabGame
//
//  Created by Jordan Christensen on 8/20/19.
//  Copyright © 2019 Mazjap Co Technologies. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}
