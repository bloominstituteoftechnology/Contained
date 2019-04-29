//
//  Settings.swift
//  Contained
//
//  Created by Victor  on 4/29/19.
//  Copyright © 2019 com.Victor. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}
