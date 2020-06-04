//
//  Settings.swift
//  Contained
//
//  Created by Bronson Mullens on 4/22/20.
//  Copyright © 2020 Bronson Mullens. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}
