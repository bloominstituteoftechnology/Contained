//
//  Settings.swift
//  Contained Project
//
//  Created by Seschwan on 5/6/19.
//  Copyright © 2019 Seschwan. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    var shouldRoll = false
    var shouldZoom = false
}
