//
//  Settings.swift
//  Crab
//
//  Created by Lambda_School_Loaner_101 on 6/10/19.
//  Copyright © 2019 Ife Banire. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}
