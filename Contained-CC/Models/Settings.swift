//
//  Settings.swift
//  Contained-CC
//
//  Created by Ciara Beitel on 8/19/19.
//  Copyright © 2019 Ciara Beitel. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}
