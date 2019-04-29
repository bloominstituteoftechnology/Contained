//
//  Settings.swift
//  Contained
//
//  Created by Christopher Aronson on 4/29/19.
//  Copyright © 2019 Christopher Aronson. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}
