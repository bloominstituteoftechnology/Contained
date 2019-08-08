//
//  Settings.swift
//  Contained
//
//  Created by John Kouris on 8/5/19.
//  Copyright © 2019 John Kouris. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
    var shouldStorePosition = false
    var shouldFade = false
}
