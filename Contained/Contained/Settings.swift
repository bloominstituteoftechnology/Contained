//
//  Settings.swift
//  Contained
//
//  Created by Jeffrey Carpenter on 4/29/19.
//  Copyright © 2019 Jeffrey Carpenter. All rights reserved.
//

import Foundation

class Settings {
    
    static var shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
    
}
