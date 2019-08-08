//
//  Settings.swift
//  ContainedApp
//
//  Created by Vici Shaweddy on 8/6/19.
//  Copyright © 2019 Vici Shaweddy. All rights reserved.
//

import Foundation

class Settings {
    enum Character {
        case happyCrab
        case waitingCrab
    }
    
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
    var shouldFade = false
    var character: Character = .happyCrab
}
