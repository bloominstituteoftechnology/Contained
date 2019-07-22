//
//  Setting.swift
//  Contained
//
//  Created by Bradley Yin on 7/22/19.
//  Copyright © 2019 bradleyyin. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
    var shouldStore = false
    var shouldStretch = false
    var shouldFade = false
    var shouldHappy = true
}
