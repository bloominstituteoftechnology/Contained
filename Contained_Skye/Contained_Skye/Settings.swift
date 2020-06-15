//
//  Settings.swift
//  Contained_Skye
//
//  Created by user162867 on 12/16/19.
//  Copyright © 2019 user162867. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}

