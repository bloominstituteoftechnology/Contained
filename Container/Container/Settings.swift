//
//  Settings.swift
//  Container
//
//  Created by Bree Jeune on 2/13/20.
//  Copyright © 2020 Young. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}
