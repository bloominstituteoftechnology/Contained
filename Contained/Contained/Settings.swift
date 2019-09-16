//
//  Settings.swift
//  Contained
//
//  Created by Isaac Lyons on 9/16/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation
import SpriteKit

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
    var shouldFade = false
    var position: CGPoint? = nil
}
