//
//  Settings.swift
//  Crabs
//
//  Created by Keri Levesque on 1/27/20.
//  Copyright © 2020 Keri Levesque. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}
