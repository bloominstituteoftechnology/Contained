//
//  Settings.swift
//  Contained
//
//  Created by Waseem Idelbi on 5/18/22.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}
