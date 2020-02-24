//
//  Settings.swift
//  Contained
//
//  Created by Samuel Esserman on 2/24/20.
//  Copyright © 2020 Samuel Esserman. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
    
}
