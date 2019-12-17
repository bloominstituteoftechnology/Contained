//
//  Settings.swift
//  SpriteKitGame
//
//  Created by Michael on 12/16/19.
//  Copyright © 2019 Michael. All rights reserved.
//

import UIKit

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
    var lastLocation: CGPoint?
    var toggleCrabs: String = "HappyCrab"
    var fade = false
}
