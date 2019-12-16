//
//  Settings.swift
//  Contained
//
//  Created by Kenny on 12/16/19.
//  Copyright © 2019 Hazy Studios. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}
