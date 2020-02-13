//
//  Settings.swift
//  HappyCrab
//
//  Created by Breena Greek on 2/11/20.
//  Copyright © 2020 Breena Greek. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
    var shouldFade = false
}
