//
//  Settings.swift
//  Contained
//
//  Created by Blake Andrew Price on 7/22/19.
//  Copyright © 2019 Blake Andrew Price. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}
