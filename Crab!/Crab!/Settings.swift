//
//  Settings.swift
//  Crab!
//
//  Created by Steven Leyva on 4/29/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}
