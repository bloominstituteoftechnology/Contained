//
//  Settings.swift
//  contained
//
//  Created by brian vilchez on 8/19/19.
//  Copyright © 2019 brian vilchez. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}
