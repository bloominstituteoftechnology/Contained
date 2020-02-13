//
//  Settings.swift
//  Contained
//
//  Created by Lambda_School_loaner_226 on 2/10/20.
//  Copyright © 2020 Lambda. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}
