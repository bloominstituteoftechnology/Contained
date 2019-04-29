//
//  Settings.swift
//  Contained
//
//  Created by Lisa Sampson on 4/29/19.
//  Copyright © 2019 Lisa M Sampson. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}
