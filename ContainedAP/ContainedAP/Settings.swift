//
//  Settings.swift
//  ContainedAP
//
//  Created by Jorge Alvarez on 12/16/19.
//  Copyright © 2019 Jorge Alvarez. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
    var happyCrab = false // stretch
}
