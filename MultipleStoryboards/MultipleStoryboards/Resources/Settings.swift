//
//  Settings.swift
//  MultipleStoryboards
//
//  Created by Miguel Marquez on 5/18/20.
//  Copyright © 2020 Miguel Marquez. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}

