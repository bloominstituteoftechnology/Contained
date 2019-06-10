//
//  Settings.swift
//  Contained
//
//  Created by Sean Acres on 6/10/19.
//  Copyright © 2019 Sean Acres. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}
