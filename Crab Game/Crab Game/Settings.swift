//
//  Settings.swift
//  Crab Game
//
//  Created by Kat Milton on 6/10/19.
//  Copyright © 2019 Kat Milton. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}
