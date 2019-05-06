//
//  Settings.swift
//  Contained
//
//  Created by Lambda_School_Loaner_64 on 5/6/19.
//  Copyright © 2019 Lambda. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}
