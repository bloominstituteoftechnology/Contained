//
//  Settings.swift
//  Contained
//
//  Created by Lambda_School_Loaner_220 on 11/11/19.
//  Copyright © 2019 James. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}
