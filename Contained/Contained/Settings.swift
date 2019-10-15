//
//  Settings.swift
//  Contained
//
//  Created by Lambda_School_Loaner_204 on 10/14/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
        
    var textureName: String = "HappyCrab"
    var shouldRoll = false
    var shouldZoom = false
    var shouldFade = false
    var pointX = 0.0
    var pointY = 0.0
}
