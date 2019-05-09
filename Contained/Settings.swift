//
//  Settings.swift
//  
//
//  Created by Nathan Hedgeman on 5/8/19.
//

import Foundation

class Settings {
    static let shared = Settings()
    
    init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}
