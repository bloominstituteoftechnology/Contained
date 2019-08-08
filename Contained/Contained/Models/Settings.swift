//
//  Settings.swift
//  Contained
//
//  Created by Jessie Ann Griffin on 8/6/19.
//  Copyright © 2019 Jessie Griffin. All rights reserved.
//

import Foundation
import UIKit

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
    
    var shouldFade = false
    
    var isHappy = false

    struct Point {
        var x: Double
        var y: Double
    }
    
    var point = Point(x: 0.0, y: 0.0)
}
