//
//  setting.swift
//  CrabsProject
//
//  Created by Jarren Campos on 2/11/20.
//  Copyright © 2020 Jarren Campos. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}
