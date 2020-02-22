//
//  Settings.swift
//  CrabGame
//
//  Created by Karen Rodriguez on 2/22/20.
//  Copyright © 2020 Hector Ledesma. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
    
}
