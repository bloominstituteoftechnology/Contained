//
//  Settings.swift
//  Contained
//
//  Created by Bhawnish Kumar on 2/24/20.
//  Copyright © 2020 Bhawnish Kumar. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}
