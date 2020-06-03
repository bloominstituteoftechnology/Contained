//
//  Settings.swift
//  Contained
//
//  Created by Cora Jacobson on 6/2/20.
//  Copyright © 2020 Cora Jacobson. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}
