//
//  Settings.swift
//  Crabs
//
//  Created by Shawn James on 2/24/20.
//  Copyright © 2020 Shawn James. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() { }
    
    var shouldRoll = false
    var shouldZoom = false
    var happyCrab = false
}
