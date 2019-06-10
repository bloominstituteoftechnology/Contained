//
//  Settings.swift
//  Contained
//
//  Created by Jake Connerly on 6/10/19.
//  Copyright © 2019 jake connerly. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}
