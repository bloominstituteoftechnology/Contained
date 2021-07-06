//
//  Settings.swift
//  Contained
//
//  Created by Kobe McKee on 5/6/19.
//  Copyright © 2019 Kobe McKee. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}
