//
//  Settings.swift
//  Contained
//
//  Created by Cora Jacobson on 6/2/20.
//  Copyright © 2020 Cora Jacobson. All rights reserved.
//

import Foundation

import SpriteKit

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
    var texture = "HappyCrab"
    var lastPosition: CGPoint? = nil
}
