//
//  Settings.swift
//  Contained
//
//  Created by Brian Cobb on 5/6/19.
//  Copyright © 2019 Kappa. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}
