//
//  Settings.swift
//  movingCrabGame
//
//  Created by Hunter Oppel on 3/23/20.
//  Copyright © 2020 LambdaSchool. All rights reserved.
//

import Foundation
import SpriteKit

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
    var position: CGPoint?
}
