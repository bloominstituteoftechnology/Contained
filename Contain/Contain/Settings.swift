//
//  Settings.swift
//  Contain
//
//  Created by Gerardo Hernandez on 12/4/19.
//  Copyright © 2019 Gerardo Hernandez. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}
