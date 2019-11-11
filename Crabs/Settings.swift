//
//  Settings.swift
//  Crabs
//
//  Created by Zack Larsen on 11/11/19.
//  Copyright © 2019 Zack Larsen. All rights reserved.
//

import Foundation


class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}

