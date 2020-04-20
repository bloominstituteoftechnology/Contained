//
//  Settings.swift
//  ContainedCrab
//
//  Created by Nonye on 4/20/20.
//  Copyright © 2020 Nonye Ezekwo. All rights reserved.
//

import Foundation
class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}
