//
//  Settings.swift
//  Contained
//
//  Created by morse on 10/14/19.
//  Copyright © 2019 morse. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}
