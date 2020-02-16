//
//  Settings.swift
//  Contained
//
//  Created by Lambda_School_Loaner_241 on 2/12/20.
//  Copyright © 2020 Lambda_School_Loaner_241. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}
