//
//  Settings.swift
//  CrabGame
//
//  Created by Waseem Idelbi on 12/4/19.
//  Copyright © 2019 Waseem Idelbi. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
    var happyCrab = false
}
