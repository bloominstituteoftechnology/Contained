//
//  Settings.swift
//  NewContainedApp
//
//  Created by Alex Perse on 5/6/19.
//  Copyright © 2019 Alex Perse. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false 
}
