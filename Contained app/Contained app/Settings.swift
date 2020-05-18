//
//  Settings.swift
//  Contained app
//
//  Created by Drew Miller on 5/18/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}
