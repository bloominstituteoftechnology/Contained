//
//  Settings.swift
//  Contained
//
//  Created by B$hady on 6/3/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//


import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}
