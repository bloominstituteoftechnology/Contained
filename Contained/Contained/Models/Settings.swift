//
//  Settings.swift
//  Contained
//
//  Created by Jeremy Taylor on 12/4/19.
//  Copyright © 2019 Bytes-Random L.L.C. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
    var happyCrab = false
}
