//
//  Settings.swift
//  Contained Project
//
//  Created by Lambda_School_Loaner_201 on 10/2/19.
//  Copyright © 2019 Christian Lorenzo. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}
