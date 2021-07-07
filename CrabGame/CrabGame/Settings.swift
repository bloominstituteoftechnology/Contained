//
//  Settings.swift
//  CrabGame
//
//  Created by LaFleur on 12/5/19.
//  Copyright © 2019 David Schwinne. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}
