//
//  Settings.swift
//  Contained
//
//  Created by Malik Barnes on 12/16/19.
//  Copyright © 2019 Malik Barnes. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}
