//
//  Settings.swift
//  Contained
//
//  Created by Lambda_School_Losaner_256 on 1/26/20.
//  Copyright © 2020 Benglobal Creative. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}
