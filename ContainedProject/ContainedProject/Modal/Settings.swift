//
//  Settings.swift
//  ContainedProject
//
//  Created by Elizabeth Thomas on 2/11/20.
//  Copyright © 2020 Libby Thomas. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
    var fastMode = false
    var fade = false
    
}



