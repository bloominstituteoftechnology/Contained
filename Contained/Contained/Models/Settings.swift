//
//  Settings.swift
//  Contained
//
//  Created by Lambda_School_Loaner_259 on 2/12/20.
//  Copyright © 2020 DeVitoC. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
    var shouldFade = false
    var shouldColorize = false
    var happyCrab = false
}


