//
//  Setting.swift
//  CrabGame
//
//  Created by Lydia Zhang on 2/24/20.
//  Copyright © 2020 Lydia Zhang. All rights reserved.
//

import Foundation
import UIKit

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
    var shouldHappy = false
    var lastLocation: CGPoint?
}
