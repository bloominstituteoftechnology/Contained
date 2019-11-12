//
//  Settings.swift
//  Contained
//
//  Created by Donella Barcelo on 11/12/19.
//  Copyright © 2019 Donella Barcelo. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}
