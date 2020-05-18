//
//  Settings.swift
//  Contained
//
//  Created by Rebecca Overare on 5/18/20.
//  Copyright © 2020 Rebecca Overare. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}
