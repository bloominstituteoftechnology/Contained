//
//  Settings.swift
//  Contained
//
//  Created by Chris Price on 12/4/19.
//  Copyright © 2019 Chris Price. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}
