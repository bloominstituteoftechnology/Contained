//
//  Model.swift
//  Containedflexflex
//
//  Created by admin on 9/16/19.
//  Copyright © 2019 admin. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}
