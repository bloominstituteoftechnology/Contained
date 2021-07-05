//
//  Settings.swift
//  ContainedFlex
//
//  Created by admin on 8/19/19.
//  Copyright © 2019 admin. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}
