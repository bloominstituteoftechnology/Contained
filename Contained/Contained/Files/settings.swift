//
//  settings.swift
//  Contained
//
//  Created by Dojo on 6/3/20.
//  Copyright © 2020 Dojo. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}
