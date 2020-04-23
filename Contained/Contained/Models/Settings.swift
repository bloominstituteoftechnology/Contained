//
//  Settings.swift
//  Contained
//
//  Created by Bohdan Tkachenko on 4/22/20.
//  Copyright © 2020 Bohdan Tkachenko. All rights reserved.
//

import Foundation
import SpriteKit


class Settings {
    static let shared = Settings()
    var recentTouch = CGPoint()
    private init() {
        
    }
    
    var shouldRoll = false
    var shouldZoom = false
    var shouldFade = false
    var isHappy = false //?
   
}


