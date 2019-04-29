//
//  Settings.swift
//  Contained
//
//  Created by Sameera Roussi on 4/29/19.
//  Copyright © 2019 Sameera Roussi. All rights reserved.
//

import Foundation

class Settings {
    
    static let shared = Settings()
    private init() {}
    
    //Handle the settings switch toggles
    class Settings {
        var shouldRoll = false
        var shouldZoom = false
    }

    
}
