//
//  Settings.swift
//  Contained
//
//  Created by Chad Rutherford on 11/11/19.
//  Copyright © 2019 Chad Rutherford. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
    var happy = false
}
