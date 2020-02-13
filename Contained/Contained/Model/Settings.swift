//
//  Settings.swift
//  Contained
//
//  Created by Claudia Contreras on 2/12/20.
//  Copyright © 2020 thecoderpilot. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
    var crabAttitude = false
}
