//
//  Settings.swift
//  Contained
//
//  Created by Alexander Supe on 11/11/19.
//  Copyright © 2019 Alexander Supe. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}
