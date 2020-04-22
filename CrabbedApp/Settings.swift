//
//  Settings.swift
//  CrabbedApp
//
//  Created by Clayton Watkins on 4/21/20.
//  Copyright © 2020 Clayton Watkins. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}
