//
//  Settings.swift
//  Contained
//
//  Created by Jake Connerly on 6/10/19.
//  Copyright © 2019 jake connerly. All rights reserved.
//

import SpriteKit
import UIKit

enum CrabChoice {
    case madCrab
    case happyCrab
}

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
    var crabChoice = CrabChoice.happyCrab
    var crabPosition = CGPoint(x: 200, y: 500)
}
