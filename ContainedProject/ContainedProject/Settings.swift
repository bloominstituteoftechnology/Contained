//
//  Settings.swift
//  ContainedProject
//
//  Created by Lisa Fisher on 8/6/19.
//  Copyright © 2019 Lisa Fisher. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}
