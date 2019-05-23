//
//  Settings.swift
//  Contained
//
//  Created by Enayatullah Naseri on 5/22/19.
//  Copyright © 2019 Enayatullah Naseri. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}
