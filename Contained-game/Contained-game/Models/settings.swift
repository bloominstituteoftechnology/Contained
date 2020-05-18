//
//  settings.swift
//  Contained-game
//
//  Created by Mike Nichols on 5/18/20.
//  Copyright © 2020 Mike Nichols. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings!
    private init() {}
    
    var shouldRoll= false
    var shouldZoom = false
}
