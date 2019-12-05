//
//  Settings.swift
//  crab
//
//  Created by alfredo on 12/5/19.
//  Copyright © 2019 alfredo. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}
