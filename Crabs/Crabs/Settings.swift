//
//  Settings.swift
//  Crabs
//
//  Created by Enzo Jimenez-Soto on 4/20/20.
//  Copyright © 2020 Enzo Jimenez-Soto. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}
