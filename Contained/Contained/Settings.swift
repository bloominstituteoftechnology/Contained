//
//  Settings.swift
//  Contained
//
//  Created by Kelson Hartle on 4/20/20.
//  Copyright © 2020 Kelson Hartle. All rights reserved.
//

import Foundation


class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}
