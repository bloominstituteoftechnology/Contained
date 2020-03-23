//
//  Settings.swift
//  contained
//
//  Created by ronald huston jr on 3/23/20.
//  Copyright © 2020 HenryQuante. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
    
}
