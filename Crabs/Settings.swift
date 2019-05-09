//
//  Settings.swift
//  Crabs
//
//  Created by Stephanie Bowles on 5/9/19.
//  Copyright © 2019 Stephanie Bowles. All rights reserved.
//

import Foundation


import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}
