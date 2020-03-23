//
//  Settings.swift
//  Contained
//
//  Created by Cameron Collins on 3/23/20.
//  Copyright © 2020 Cameron Collins. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}
