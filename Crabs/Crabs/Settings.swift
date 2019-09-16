//
//  Settings.swift
//  Crabs
//
//  Created by Jonalynn Masters on 9/16/19.
//  Copyright © 2019 Jonalynn Masters. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}
