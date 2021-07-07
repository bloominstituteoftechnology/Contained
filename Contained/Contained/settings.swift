//
//  settings.swift
//  Contained
//
//  Created by Morgan Smith on 12/4/19.
//  Copyright © 2019 Morgan Smith. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}
