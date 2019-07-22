//
//  Settings.swift
//  Contained
//
//  Created by Percy Ngan on 7/22/19.
//  Copyright © 2019 Lamdba School. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init () {}
    
    var shouldRoll = false
    var shouldZoom = false
}
