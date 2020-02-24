//
//  Settings.swift
//  Contained
//
//  Created by Wyatt Harrell on 2/24/20.
//  Copyright © 2020 Wyatt Harrell. All rights reserved.
//

import Foundation
import SpriteKit

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
    var shouldShowWaitingCrab = false
    var shouldFade = false
    var location: CGPoint = CGPoint(x: 150, y: 150)
}
