//
//  Settings.swift
//  Contained
//
//  Created by Aaron Peterson on 4/21/20.
//  Copyright © 2020 Aaron Peterson. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}
