//
//  Settings.swift
//  Crabs
//
//  Created by Gladymir Philippe on 6/3/20.
//  Copyright © 2020 Gladymir Philippe. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings ()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}
