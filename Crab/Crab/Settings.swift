//
//  Settings.swift
//  Crab
//
//  Created by Ufuk Türközü on 11.11.19.
//  Copyright © 2019 Ufuk Türközü. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}
