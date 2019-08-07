//
//  Settings.swift
//  Contained
//
//  Created by Fabiola S on 8/6/19.
//  Copyright © 2019 Fabiola Saga. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}
