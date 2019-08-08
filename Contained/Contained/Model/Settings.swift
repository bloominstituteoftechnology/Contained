//
//  Settings.swift
//  Contained
//
//  Created by Eoin Lavery on 07/08/2019.
//  Copyright © 2019 Eoin Lavery. All rights reserved.
//

import Foundation
import UIKit
import SpriteKit

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
    var crabPosition: CGPoint?
}
