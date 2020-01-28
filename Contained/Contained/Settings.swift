//
//  Settings.swift
//  Contained
//
//  Created by Enrique Gongora on 1/27/20.
//  Copyright © 2020 Enrique Gongora. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
    
    var changedCrabs: String = "Happy Crab"
}
