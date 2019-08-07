//
//  Settings.swift
//  Contained
//
//  Created by Jessie Ann Griffin on 8/6/19.
//  Copyright © 2019 Jessie Griffin. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}
