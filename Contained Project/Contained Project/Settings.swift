//
//  Settings.swift
//  Contained Project
//
//  Created by Juan M Mariscal on 2/11/20.
//  Copyright © 2020 Juan M Mariscal. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}
