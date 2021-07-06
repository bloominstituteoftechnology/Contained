//
//  Settings.swift
//  Contained
//
//  Created by Mitchell Budge on 4/29/19.
//  Copyright © 2019 Mitchell Budge. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}
