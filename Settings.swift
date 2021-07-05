//
//  Settings.swift
//  Contained
//
//  Created by Andrew Ruiz on 7/22/19.
//  Copyright © 2019 Andrew Ruiz. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}
