//
//  Settings.swift
//  Contained
//
//  Created by Tobi Kuyoro on 16/12/2019.
//  Copyright © 2019 Tobi Kuyoro. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}
